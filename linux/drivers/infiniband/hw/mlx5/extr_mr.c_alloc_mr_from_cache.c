
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
struct mlx5_mtt {int dummy; } ;
struct TYPE_5__ {int pd; void* size; void* iova; } ;
struct TYPE_4__ {struct ib_pd* pd; } ;
struct mlx5_ib_mr {int access_flags; int desc_size; TYPE_2__ mmkey; struct ib_umem* umem; TYPE_1__ ibmr; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_umem {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_6__ {int pdn; } ;


 int EAGAIN ;
 struct mlx5_ib_mr* ERR_PTR (int) ;
 int add_keys (struct mlx5_ib_dev*,int ,int) ;
 struct mlx5_ib_mr* alloc_cached_mr (struct mlx5_ib_dev*,int) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int order2idx (struct mlx5_ib_dev*,int) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 TYPE_3__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static struct mlx5_ib_mr *alloc_mr_from_cache(
      struct ib_pd *pd, struct ib_umem *umem,
      u64 virt_addr, u64 len, int npages,
      int page_shift, int order, int access_flags)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct mlx5_ib_mr *mr;
 int err = 0;
 int i;

 for (i = 0; i < 1; i++) {
  mr = alloc_cached_mr(dev, order);
  if (mr)
   break;

  err = add_keys(dev, order2idx(dev, order), 1);
  if (err && err != -EAGAIN) {
   mlx5_ib_warn(dev, "add_keys failed, err %d\n", err);
   break;
  }
 }

 if (!mr)
  return ERR_PTR(-EAGAIN);

 mr->ibmr.pd = pd;
 mr->umem = umem;
 mr->access_flags = access_flags;
 mr->desc_size = sizeof(struct mlx5_mtt);
 mr->mmkey.iova = virt_addr;
 mr->mmkey.size = len;
 mr->mmkey.pd = to_mpd(pd)->pdn;

 return mr;
}
