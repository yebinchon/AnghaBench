
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int key; } ;
struct ib_mr {int lkey; int rkey; } ;
struct mlx4_ib_mr {TYPE_3__ mmr; struct ib_mr ibmr; int * umem; } ;
struct ib_pd {int device; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int convert_access (int) ;
 int kfree (struct mlx4_ib_mr*) ;
 struct mlx4_ib_mr* kzalloc (int,int ) ;
 int mlx4_mr_alloc (int ,int ,int ,unsigned long long,int ,int ,int ,TYPE_3__*) ;
 int mlx4_mr_enable (int ,TYPE_3__*) ;
 int mlx4_mr_free (int ,TYPE_3__*) ;
 TYPE_2__* to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

struct ib_mr *mlx4_ib_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct mlx4_ib_mr *mr;
 int err;

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 err = mlx4_mr_alloc(to_mdev(pd->device)->dev, to_mpd(pd)->pdn, 0,
       ~0ull, convert_access(acc), 0, 0, &mr->mmr);
 if (err)
  goto err_free;

 err = mlx4_mr_enable(to_mdev(pd->device)->dev, &mr->mmr);
 if (err)
  goto err_mr;

 mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
 mr->umem = ((void*)0);

 return &mr->ibmr;

err_mr:
 (void) mlx4_mr_free(to_mdev(pd->device)->dev, &mr->mmr);

err_free:
 kfree(mr);

 return ERR_PTR(err);
}
