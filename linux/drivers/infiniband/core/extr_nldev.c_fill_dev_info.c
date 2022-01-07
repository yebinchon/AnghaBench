
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sys_image_guid; int device_cap_flags; } ;
struct ib_device {int use_cq_dim; int node_type; TYPE_1__ attrs; int node_guid; } ;


 int BUILD_BUG_ON (int) ;
 int EMSGSIZE ;
 int IB_FW_VERSION_NAME_MAX ;
 int RDMA_NLDEV_ATTR_CAP_FLAGS ;
 int RDMA_NLDEV_ATTR_DEV_DIM ;
 int RDMA_NLDEV_ATTR_DEV_NODE_TYPE ;
 int RDMA_NLDEV_ATTR_DEV_PROTOCOL ;
 int RDMA_NLDEV_ATTR_FW_VERSION ;
 int RDMA_NLDEV_ATTR_NODE_GUID ;
 int RDMA_NLDEV_ATTR_PAD ;
 int RDMA_NLDEV_ATTR_PORT_INDEX ;
 int RDMA_NLDEV_ATTR_SYS_IMAGE_GUID ;
 int be64_to_cpu (int ) ;
 scalar_t__ fill_nldev_handle (struct sk_buff*,struct ib_device*) ;
 int ib_get_device_fw_str (struct ib_device*,char*) ;
 int nla_put_string (struct sk_buff*,int ,char*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 scalar_t__ rdma_cap_opa_mad (struct ib_device*,int ) ;
 int rdma_end_port (struct ib_device*) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,int ) ;
 scalar_t__ rdma_protocol_iwarp (struct ib_device*,int ) ;
 scalar_t__ rdma_protocol_roce (struct ib_device*,int ) ;
 scalar_t__ rdma_protocol_usnic (struct ib_device*,int ) ;
 int rdma_start_port (struct ib_device*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int fill_dev_info(struct sk_buff *msg, struct ib_device *device)
{
 char fw[IB_FW_VERSION_NAME_MAX];
 int ret = 0;
 u8 port;

 if (fill_nldev_handle(msg, device))
  return -EMSGSIZE;

 if (nla_put_u32(msg, RDMA_NLDEV_ATTR_PORT_INDEX, rdma_end_port(device)))
  return -EMSGSIZE;

 BUILD_BUG_ON(sizeof(device->attrs.device_cap_flags) != sizeof(u64));
 if (nla_put_u64_64bit(msg, RDMA_NLDEV_ATTR_CAP_FLAGS,
         device->attrs.device_cap_flags,
         RDMA_NLDEV_ATTR_PAD))
  return -EMSGSIZE;

 ib_get_device_fw_str(device, fw);

 if (strlen(fw) && nla_put_string(msg, RDMA_NLDEV_ATTR_FW_VERSION, fw))
  return -EMSGSIZE;

 if (nla_put_u64_64bit(msg, RDMA_NLDEV_ATTR_NODE_GUID,
         be64_to_cpu(device->node_guid),
         RDMA_NLDEV_ATTR_PAD))
  return -EMSGSIZE;
 if (nla_put_u64_64bit(msg, RDMA_NLDEV_ATTR_SYS_IMAGE_GUID,
         be64_to_cpu(device->attrs.sys_image_guid),
         RDMA_NLDEV_ATTR_PAD))
  return -EMSGSIZE;
 if (nla_put_u8(msg, RDMA_NLDEV_ATTR_DEV_NODE_TYPE, device->node_type))
  return -EMSGSIZE;
 if (nla_put_u8(msg, RDMA_NLDEV_ATTR_DEV_DIM, device->use_cq_dim))
  return -EMSGSIZE;






 port = rdma_start_port(device);
 if (rdma_cap_opa_mad(device, port))
  ret = nla_put_string(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "opa");
 else if (rdma_protocol_ib(device, port))
  ret = nla_put_string(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "ib");
 else if (rdma_protocol_iwarp(device, port))
  ret = nla_put_string(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "iw");
 else if (rdma_protocol_roce(device, port))
  ret = nla_put_string(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL, "roce");
 else if (rdma_protocol_usnic(device, port))
  ret = nla_put_string(msg, RDMA_NLDEV_ATTR_DEV_PROTOCOL,
         "usnic");
 return ret;
}
