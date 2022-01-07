
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* get_link_layer ) (struct ib_device*,int ) ;} ;
struct ib_device {int node_type; TYPE_1__ ops; } ;
typedef enum rdma_transport_type { ____Placeholder_rdma_transport_type } rdma_transport_type ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int IB_LINK_LAYER_INFINIBAND ;
 int RDMA_TRANSPORT_IB ;
 int rdma_node_get_transport (int ) ;
 int stub1 (struct ib_device*,int ) ;

enum rdma_link_layer rdma_port_get_link_layer(struct ib_device *device, u8 port_num)
{
 enum rdma_transport_type lt;
 if (device->ops.get_link_layer)
  return device->ops.get_link_layer(device, port_num);

 lt = rdma_node_get_transport(device->node_type);
 if (lt == RDMA_TRANSPORT_IB)
  return IB_LINK_LAYER_INFINIBAND;

 return IB_LINK_LAYER_ETHERNET;
}
