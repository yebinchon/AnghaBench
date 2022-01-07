
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int ib_dev; struct net_device* ndev; } ;
struct net_device {int mtu; } ;


 int ENOMEM ;
 struct rxe_dev* ib_alloc_device (int ,int ) ;
 int ib_dealloc_device (int *) ;
 int ib_dev ;
 int rxe_add (struct rxe_dev*,int ,char const*) ;
 int rxe_dev ;

int rxe_net_add(const char *ibdev_name, struct net_device *ndev)
{
 int err;
 struct rxe_dev *rxe = ((void*)0);

 rxe = ib_alloc_device(rxe_dev, ib_dev);
 if (!rxe)
  return -ENOMEM;

 rxe->ndev = ndev;

 err = rxe_add(rxe, ndev->mtu, ibdev_name);
 if (err) {
  ib_dealloc_device(&rxe->ib_dev);
  return err;
 }

 return 0;
}
