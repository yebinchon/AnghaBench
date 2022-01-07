
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;

enum rdma_link_layer rxe_link_layer(struct rxe_dev *rxe, unsigned int port_num)
{
 return IB_LINK_LAYER_ETHERNET;
}
