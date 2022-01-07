
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;

__attribute__((used)) static enum rdma_link_layer qedr_link_layer(struct ib_device *device,
         u8 port_num)
{
 return IB_LINK_LAYER_ETHERNET;
}
