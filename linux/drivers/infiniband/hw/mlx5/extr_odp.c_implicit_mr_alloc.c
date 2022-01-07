
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int key; scalar_t__ iova; } ;
struct TYPE_3__ {int rkey; int lkey; struct ib_pd* pd; } ;
struct mlx5_ib_mr {int access_flags; TYPE_2__ mmkey; TYPE_1__ ibmr; int * umem; struct mlx5_ib_dev* dev; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_umem_odp {int umem; } ;
struct ib_pd {int device; } ;


 struct mlx5_ib_mr* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlx5_ib_mr*) ;
 int MLX5_IB_UPD_XLT_ATOMIC ;
 int MLX5_IB_UPD_XLT_ENABLE ;
 int MLX5_IB_UPD_XLT_INDIRECT ;
 int MLX5_IB_UPD_XLT_ZAP ;
 int MLX5_IMR_KSM_CACHE_ENTRY ;
 int MLX5_IMR_MTT_CACHE_ENTRY ;
 int MLX5_IMR_MTT_ENTRIES ;
 int MLX5_KSM_PAGE_SHIFT ;
 int PAGE_SHIFT ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int ,int ,struct mlx5_ib_mr*) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int) ;
 int mlx5_ib_update_xlt (struct mlx5_ib_mr*,int ,int ,int ,int) ;
 int mlx5_imr_ksm_entries ;
 struct mlx5_ib_mr* mlx5_mr_cache_alloc (struct mlx5_ib_dev*,int ) ;
 int mlx5_mr_cache_free (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static struct mlx5_ib_mr *implicit_mr_alloc(struct ib_pd *pd,
         struct ib_umem_odp *umem_odp,
         bool ksm, int access_flags)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct mlx5_ib_mr *mr;
 int err;

 mr = mlx5_mr_cache_alloc(dev, ksm ? MLX5_IMR_KSM_CACHE_ENTRY :
         MLX5_IMR_MTT_CACHE_ENTRY);

 if (IS_ERR(mr))
  return mr;

 mr->ibmr.pd = pd;

 mr->dev = dev;
 mr->access_flags = access_flags;
 mr->mmkey.iova = 0;
 mr->umem = &umem_odp->umem;

 if (ksm) {
  err = mlx5_ib_update_xlt(mr, 0,
      mlx5_imr_ksm_entries,
      MLX5_KSM_PAGE_SHIFT,
      MLX5_IB_UPD_XLT_INDIRECT |
      MLX5_IB_UPD_XLT_ZAP |
      MLX5_IB_UPD_XLT_ENABLE);

 } else {
  err = mlx5_ib_update_xlt(mr, 0,
      MLX5_IMR_MTT_ENTRIES,
      PAGE_SHIFT,
      MLX5_IB_UPD_XLT_ZAP |
      MLX5_IB_UPD_XLT_ENABLE |
      MLX5_IB_UPD_XLT_ATOMIC);
 }

 if (err)
  goto fail;

 mr->ibmr.lkey = mr->mmkey.key;
 mr->ibmr.rkey = mr->mmkey.key;

 mlx5_ib_dbg(dev, "key %x dev %p mr %p\n",
      mr->mmkey.key, dev->mdev, mr);

 return mr;

fail:
 mlx5_ib_err(dev, "Failed to register MKEY %d\n", err);
 mlx5_mr_cache_free(dev, mr);

 return ERR_PTR(err);
}
