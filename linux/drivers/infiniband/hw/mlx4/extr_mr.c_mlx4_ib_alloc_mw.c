
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int key; } ;
struct ib_mw {int rkey; } ;
struct mlx4_ib_mw {TYPE_2__ mmw; struct ib_mw ibmw; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;
struct TYPE_5__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlx4_ib_mw*) ;
 struct mlx4_ib_mw* kmalloc (int,int ) ;
 int mlx4_mw_alloc (int ,int ,int ,TYPE_2__*) ;
 int mlx4_mw_enable (int ,TYPE_2__*) ;
 int mlx4_mw_free (int ,TYPE_2__*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 int to_mlx4_type (int) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

struct ib_mw *mlx4_ib_alloc_mw(struct ib_pd *pd, enum ib_mw_type type,
          struct ib_udata *udata)
{
 struct mlx4_ib_dev *dev = to_mdev(pd->device);
 struct mlx4_ib_mw *mw;
 int err;

 mw = kmalloc(sizeof(*mw), GFP_KERNEL);
 if (!mw)
  return ERR_PTR(-ENOMEM);

 err = mlx4_mw_alloc(dev->dev, to_mpd(pd)->pdn,
       to_mlx4_type(type), &mw->mmw);
 if (err)
  goto err_free;

 err = mlx4_mw_enable(dev->dev, &mw->mmw);
 if (err)
  goto err_mw;

 mw->ibmw.rkey = mw->mmw.key;

 return &mw->ibmw;

err_mw:
 mlx4_mw_free(dev->dev, &mw->mmw);

err_free:
 kfree(mw);

 return ERR_PTR(err);
}
