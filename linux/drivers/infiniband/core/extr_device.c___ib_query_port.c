
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef int u8 ;
struct ib_port_attr {scalar_t__ subnet_prefix; } ;
struct TYPE_4__ {int (* query_port ) (struct ib_device*,int ,struct ib_port_attr*) ;int (* query_gid ) (struct ib_device*,int ,int ,union ib_gid*) ;} ;
struct ib_device {TYPE_2__ ops; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 scalar_t__ be64_to_cpu (int ) ;
 int memset (struct ib_port_attr*,int ,int) ;
 scalar_t__ rdma_port_get_link_layer (struct ib_device*,int ) ;
 int stub1 (struct ib_device*,int ,struct ib_port_attr*) ;
 int stub2 (struct ib_device*,int ,int ,union ib_gid*) ;

__attribute__((used)) static int __ib_query_port(struct ib_device *device,
      u8 port_num,
      struct ib_port_attr *port_attr)
{
 union ib_gid gid = {};
 int err;

 memset(port_attr, 0, sizeof(*port_attr));

 err = device->ops.query_port(device, port_num, port_attr);
 if (err || port_attr->subnet_prefix)
  return err;

 if (rdma_port_get_link_layer(device, port_num) !=
     IB_LINK_LAYER_INFINIBAND)
  return 0;

 err = device->ops.query_gid(device, port_num, 0, &gid);
 if (err)
  return err;

 port_attr->subnet_prefix = be64_to_cpu(gid.global.subnet_prefix);
 return 0;
}
