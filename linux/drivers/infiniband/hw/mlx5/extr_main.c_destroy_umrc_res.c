
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pd; scalar_t__ cq; scalar_t__ qp; } ;
struct mlx5_ib_dev {TYPE_1__ umrc; } ;


 int ib_dealloc_pd (scalar_t__) ;
 int ib_free_cq (scalar_t__) ;
 int mlx5_ib_destroy_qp (scalar_t__,int *) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;
 int mlx5_mr_cache_cleanup (struct mlx5_ib_dev*) ;

__attribute__((used)) static void destroy_umrc_res(struct mlx5_ib_dev *dev)
{
 int err;

 err = mlx5_mr_cache_cleanup(dev);
 if (err)
  mlx5_ib_warn(dev, "mr cache cleanup failed\n");

 if (dev->umrc.qp)
  mlx5_ib_destroy_qp(dev->umrc.qp, ((void*)0));
 if (dev->umrc.cq)
  ib_free_cq(dev->umrc.cq);
 if (dev->umrc.pd)
  ib_dealloc_pd(dev->umrc.pd);
}
