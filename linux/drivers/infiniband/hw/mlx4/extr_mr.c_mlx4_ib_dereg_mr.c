
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_mr {scalar_t__ umem; int mmr; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int device; } ;
struct TYPE_2__ {int dev; } ;


 int ib_umem_release (scalar_t__) ;
 int kfree (struct mlx4_ib_mr*) ;
 int mlx4_free_priv_pages (struct mlx4_ib_mr*) ;
 int mlx4_mr_free (int ,int *) ;
 TYPE_1__* to_mdev (int ) ;
 struct mlx4_ib_mr* to_mmr (struct ib_mr*) ;

int mlx4_ib_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata)
{
 struct mlx4_ib_mr *mr = to_mmr(ibmr);
 int ret;

 mlx4_free_priv_pages(mr);

 ret = mlx4_mr_free(to_mdev(ibmr->device)->dev, &mr->mmr);
 if (ret)
  return ret;
 if (mr->umem)
  ib_umem_release(mr->umem);
 kfree(mr);

 return 0;
}
