
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_6__ {int key; int mtt; } ;
struct ib_mr {unsigned int page_size; void* iova; void* length; int lkey; int rkey; } ;
struct mlx4_ib_mr {int umem; TYPE_2__ mmr; struct ib_mr ibmr; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_5__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int convert_access (int) ;
 int ib_umem_page_count (int ) ;
 int ib_umem_release (int ) ;
 int kfree (struct mlx4_ib_mr*) ;
 struct mlx4_ib_mr* kzalloc (int,int ) ;
 int mlx4_get_umem_mr (struct ib_udata*,void*,void*,int) ;
 int mlx4_ib_umem_calc_optimal_mtt_size (int ,void*,int*) ;
 int mlx4_ib_umem_write_mtt (struct mlx4_ib_dev*,int *,int ) ;
 int mlx4_mr_alloc (int ,int ,void*,void*,int ,int,int,TYPE_2__*) ;
 int mlx4_mr_enable (int ,TYPE_2__*) ;
 int mlx4_mr_free (int ,TYPE_2__*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

struct ib_mr *mlx4_ib_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
      u64 virt_addr, int access_flags,
      struct ib_udata *udata)
{
 struct mlx4_ib_dev *dev = to_mdev(pd->device);
 struct mlx4_ib_mr *mr;
 int shift;
 int err;
 int n;

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->umem = mlx4_get_umem_mr(udata, start, length, access_flags);
 if (IS_ERR(mr->umem)) {
  err = PTR_ERR(mr->umem);
  goto err_free;
 }

 n = ib_umem_page_count(mr->umem);
 shift = mlx4_ib_umem_calc_optimal_mtt_size(mr->umem, start, &n);

 err = mlx4_mr_alloc(dev->dev, to_mpd(pd)->pdn, virt_addr, length,
       convert_access(access_flags), n, shift, &mr->mmr);
 if (err)
  goto err_umem;

 err = mlx4_ib_umem_write_mtt(dev, &mr->mmr.mtt, mr->umem);
 if (err)
  goto err_mr;

 err = mlx4_mr_enable(dev->dev, &mr->mmr);
 if (err)
  goto err_mr;

 mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
 mr->ibmr.length = length;
 mr->ibmr.iova = virt_addr;
 mr->ibmr.page_size = 1U << shift;

 return &mr->ibmr;

err_mr:
 (void) mlx4_mr_free(to_mdev(pd->device)->dev, &mr->mmr);

err_umem:
 ib_umem_release(mr->umem);

err_free:
 kfree(mr);

 return ERR_PTR(err);
}
