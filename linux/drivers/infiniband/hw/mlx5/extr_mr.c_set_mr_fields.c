
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {int length; int rkey; int lkey; } ;
struct TYPE_5__ {int key; } ;
struct mlx5_ib_mr {int npages; int access_flags; TYPE_4__ ibmr; TYPE_1__ mmkey; } ;
struct mlx5_ib_dev {TYPE_3__* mdev; } ;
struct TYPE_6__ {int reg_pages; } ;
struct TYPE_7__ {TYPE_2__ priv; } ;


 int atomic_add (int,int *) ;

__attribute__((used)) static void set_mr_fields(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr,
     int npages, u64 length, int access_flags)
{
 mr->npages = npages;
 atomic_add(npages, &dev->mdev->priv.reg_pages);
 mr->ibmr.lkey = mr->mmkey.key;
 mr->ibmr.rkey = mr->mmkey.key;
 mr->ibmr.length = length;
 mr->access_flags = access_flags;
}
