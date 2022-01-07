
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int IFLA_VF_IB_NODE_GUID ;
 int IFLA_VF_IB_PORT_GUID ;
 int set_vf_node_guid (struct ib_device*,int,int ,int ) ;
 int set_vf_port_guid (struct ib_device*,int,int ,int ) ;

int mlx5_ib_set_vf_guid(struct ib_device *device, int vf, u8 port,
   u64 guid, int type)
{
 if (type == IFLA_VF_IB_NODE_GUID)
  return set_vf_node_guid(device, vf, port, guid);
 else if (type == IFLA_VF_IB_PORT_GUID)
  return set_vf_port_guid(device, vf, port, guid);

 return -EINVAL;
}
