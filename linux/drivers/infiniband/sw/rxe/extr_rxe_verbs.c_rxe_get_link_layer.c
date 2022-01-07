
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_dev {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int rxe_link_layer (struct rxe_dev*,int ) ;
 struct rxe_dev* to_rdev (struct ib_device*) ;

__attribute__((used)) static enum rdma_link_layer rxe_get_link_layer(struct ib_device *dev,
            u8 port_num)
{
 struct rxe_dev *rxe = to_rdev(dev);

 return rxe_link_layer(rxe, port_num);
}
