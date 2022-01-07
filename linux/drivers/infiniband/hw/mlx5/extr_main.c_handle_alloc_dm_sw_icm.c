
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_4__ {int obj_id; } ;
struct mlx5_ib_dm {TYPE_1__ icm_dm; int dev_addr; int size; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_ucontext {int device; } ;
struct ib_dm_alloc_attr {int length; } ;
struct TYPE_6__ {struct mlx5_core_dev* mdev; } ;
struct TYPE_5__ {int devx_uid; } ;


 int MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET ;
 int MLX5_SW_ICM_BLOCK_SIZE (struct mlx5_core_dev*) ;
 int mlx5_dm_sw_icm_alloc (struct mlx5_core_dev*,int,int ,int ,int *,int *) ;
 int mlx5_dm_sw_icm_dealloc (struct mlx5_core_dev*,int,int ,int ,int ,int ) ;
 int round_up (int ,int ) ;
 int roundup_pow_of_two (int ) ;
 TYPE_3__* to_mdev (int ) ;
 TYPE_2__* to_mucontext (struct ib_ucontext*) ;
 int uverbs_copy_to (struct uverbs_attr_bundle*,int ,int *,int) ;

__attribute__((used)) static int handle_alloc_dm_sw_icm(struct ib_ucontext *ctx,
      struct mlx5_ib_dm *dm,
      struct ib_dm_alloc_attr *attr,
      struct uverbs_attr_bundle *attrs,
      int type)
{
 struct mlx5_core_dev *dev = to_mdev(ctx->device)->mdev;
 u64 act_size;
 int err;




 act_size = round_up(attr->length, MLX5_SW_ICM_BLOCK_SIZE(dev));
 act_size = roundup_pow_of_two(act_size);

 dm->size = act_size;
 err = mlx5_dm_sw_icm_alloc(dev, type, act_size,
       to_mucontext(ctx)->devx_uid, &dm->dev_addr,
       &dm->icm_dm.obj_id);
 if (err)
  return err;

 err = uverbs_copy_to(attrs,
        MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET,
        &dm->dev_addr, sizeof(dm->dev_addr));
 if (err)
  mlx5_dm_sw_icm_dealloc(dev, type, dm->size,
           to_mucontext(ctx)->devx_uid, dm->dev_addr,
           dm->icm_dm.obj_id);

 return err;
}
