
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ib_mr {int dummy; } ;
struct TYPE_5__ {int key; } ;
struct mlx5_ib_mr {struct ib_mr ibmr; int live; int num_pending_prefetch; struct ib_umem* umem; TYPE_2__ mmkey; } ;
struct TYPE_4__ {int general_caps; } ;
struct mlx5_ib_dev {int slow_path_mutex; int mdev; TYPE_1__ odp_caps; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct TYPE_6__ {struct mlx5_ib_mr* private; } ;


 int CONFIG_INFINIBAND_ON_DEMAND_PAGING ;
 int CONFIG_INFINIBAND_USER_MEM ;
 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 struct ib_mr* ERR_CAST (struct mlx5_ib_mr*) ;
 struct ib_mr* ERR_PTR (int) ;
 int IB_ACCESS_ON_DEMAND ;
 int IB_ODP_SUPPORT_IMPLICIT ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct mlx5_ib_mr*) ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_IB_UPD_XLT_ENABLE ;
 int MLX5_IB_UPD_XLT_ZAP ;
 int PTR_ERR (struct mlx5_ib_mr*) ;
 int U64_MAX ;
 struct mlx5_ib_mr* alloc_mr_from_cache (struct ib_pd*,struct ib_umem*,int ,int ,int,int,int,int) ;
 int atomic_set (int *,int ) ;
 int dereg_mr (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 int ib_umem_release (struct ib_umem*) ;
 scalar_t__ is_odp_mr (struct mlx5_ib_mr*) ;
 struct mlx5_ib_mr* mlx5_ib_alloc_implicit_mr (int ,struct ib_udata*,int) ;
 int mlx5_ib_can_use_umr (struct mlx5_ib_dev*,int) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int,...) ;
 int mlx5_ib_update_xlt (struct mlx5_ib_mr*,int ,int,int,int) ;
 int mr_cache_max_order (struct mlx5_ib_dev*) ;
 int mr_umem_get (struct mlx5_ib_dev*,struct ib_udata*,int ,int ,int,struct ib_umem**,int*,int*,int*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 struct mlx5_ib_mr* reg_create (int *,struct ib_pd*,int ,int ,struct ib_umem*,int,int,int,int) ;
 int set_mr_fields (struct mlx5_ib_dev*,struct mlx5_ib_mr*,int,int ,int) ;
 int smp_store_release (int *,int) ;
 TYPE_3__* to_ib_umem_odp (struct ib_umem*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 int to_mpd (struct ib_pd*) ;
 int umr_extended_translation_offset ;

struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
      u64 virt_addr, int access_flags,
      struct ib_udata *udata)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct mlx5_ib_mr *mr = ((void*)0);
 bool use_umr;
 struct ib_umem *umem;
 int page_shift;
 int npages;
 int ncont;
 int order;
 int err;

 if (!IS_ENABLED(CONFIG_INFINIBAND_USER_MEM))
  return ERR_PTR(-EOPNOTSUPP);

 mlx5_ib_dbg(dev, "start 0x%llx, virt_addr 0x%llx, length 0x%llx, access_flags 0x%x\n",
      start, virt_addr, length, access_flags);

 if (IS_ENABLED(CONFIG_INFINIBAND_ON_DEMAND_PAGING) && !start &&
     length == U64_MAX) {
  if (!(access_flags & IB_ACCESS_ON_DEMAND) ||
      !(dev->odp_caps.general_caps & IB_ODP_SUPPORT_IMPLICIT))
   return ERR_PTR(-EINVAL);

  mr = mlx5_ib_alloc_implicit_mr(to_mpd(pd), udata, access_flags);
  if (IS_ERR(mr))
   return ERR_CAST(mr);
  return &mr->ibmr;
 }

 err = mr_umem_get(dev, udata, start, length, access_flags, &umem,
     &npages, &page_shift, &ncont, &order);

 if (err < 0)
  return ERR_PTR(err);

 use_umr = mlx5_ib_can_use_umr(dev, 1);

 if (order <= mr_cache_max_order(dev) && use_umr) {
  mr = alloc_mr_from_cache(pd, umem, virt_addr, length, ncont,
      page_shift, order, access_flags);
  if (PTR_ERR(mr) == -EAGAIN) {
   mlx5_ib_dbg(dev, "cache empty for order %d\n", order);
   mr = ((void*)0);
  }
 } else if (!MLX5_CAP_GEN(dev->mdev, umr_extended_translation_offset)) {
  if (access_flags & IB_ACCESS_ON_DEMAND) {
   err = -EINVAL;
   pr_err("Got MR registration for ODP MR > 512MB, not supported for Connect-IB\n");
   goto error;
  }
  use_umr = 0;
 }

 if (!mr) {
  mutex_lock(&dev->slow_path_mutex);
  mr = reg_create(((void*)0), pd, virt_addr, length, umem, ncont,
    page_shift, access_flags, !use_umr);
  mutex_unlock(&dev->slow_path_mutex);
 }

 if (IS_ERR(mr)) {
  err = PTR_ERR(mr);
  goto error;
 }

 mlx5_ib_dbg(dev, "mkey 0x%x\n", mr->mmkey.key);

 mr->umem = umem;
 set_mr_fields(dev, mr, npages, length, access_flags);

 if (use_umr) {
  int update_xlt_flags = MLX5_IB_UPD_XLT_ENABLE;

  if (access_flags & IB_ACCESS_ON_DEMAND)
   update_xlt_flags |= MLX5_IB_UPD_XLT_ZAP;

  err = mlx5_ib_update_xlt(mr, 0, ncont, page_shift,
      update_xlt_flags);

  if (err) {
   dereg_mr(dev, mr);
   return ERR_PTR(err);
  }
 }

 if (is_odp_mr(mr)) {
  to_ib_umem_odp(mr->umem)->private = mr;
  atomic_set(&mr->num_pending_prefetch, 0);
 }
 if (IS_ENABLED(CONFIG_INFINIBAND_ON_DEMAND_PAGING))
  smp_store_release(&mr->live, 1);

 return &mr->ibmr;
error:
 ib_umem_release(umem);
 return ERR_PTR(err);
}
