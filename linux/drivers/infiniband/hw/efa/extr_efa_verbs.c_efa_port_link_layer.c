
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_UNSPECIFIED ;

enum rdma_link_layer efa_port_link_layer(struct ib_device *ibdev,
      u8 port_num)
{
 return IB_LINK_LAYER_UNSPECIFIED;
}
