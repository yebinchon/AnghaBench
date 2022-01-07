
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_dev {int usdev_lock; int pending_mmaps; int pending_lock; int mmap_offset_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int rxe_cleanup_ports (struct rxe_dev*) ;
 int rxe_init_device_param (struct rxe_dev*) ;
 int rxe_init_pools (struct rxe_dev*) ;
 int rxe_init_ports (struct rxe_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int rxe_init(struct rxe_dev *rxe)
{
 int err;


 rxe_init_device_param(rxe);

 err = rxe_init_ports(rxe);
 if (err)
  goto err1;

 err = rxe_init_pools(rxe);
 if (err)
  goto err2;


 spin_lock_init(&rxe->mmap_offset_lock);
 spin_lock_init(&rxe->pending_lock);
 INIT_LIST_HEAD(&rxe->pending_mmaps);

 mutex_init(&rxe->usdev_lock);

 return 0;

err2:
 rxe_cleanup_ports(rxe);
err1:
 return err;
}
