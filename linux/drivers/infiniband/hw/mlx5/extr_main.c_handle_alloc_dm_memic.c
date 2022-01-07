
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_dm {int dev_addr; int size; } ;
struct mlx5_dm {TYPE_3__* dev; } ;
struct ib_ucontext {int device; } ;
struct ib_dm_alloc_attr {int alignment; int length; } ;
typedef int start_offset ;
typedef int page_idx ;
struct TYPE_6__ {int pdev; } ;
struct TYPE_5__ {struct mlx5_dm dm; } ;
struct TYPE_4__ {int dm_pages; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int MLX5_CAP64_DEV_MEM (TYPE_3__*,int ) ;
 int MLX5_IB_ATTR_ALLOC_DM_RESP_PAGE_INDEX ;
 int MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET ;
 int MLX5_MEMIC_BASE_SIZE ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int bitmap_set (int ,int,int ) ;
 int memic_bar_start_addr ;
 int mlx5_cmd_alloc_memic (struct mlx5_dm*,int*,int ,int ) ;
 int mlx5_cmd_dealloc_memic (struct mlx5_dm*,int,int ) ;
 int pci_resource_start (int ,int ) ;
 int roundup (int ,int ) ;
 TYPE_2__* to_mdev (int ) ;
 TYPE_1__* to_mucontext (struct ib_ucontext*) ;
 int uverbs_copy_to (struct uverbs_attr_bundle*,int ,int*,int) ;

__attribute__((used)) static int handle_alloc_dm_memic(struct ib_ucontext *ctx,
     struct mlx5_ib_dm *dm,
     struct ib_dm_alloc_attr *attr,
     struct uverbs_attr_bundle *attrs)
{
 struct mlx5_dm *dm_db = &to_mdev(ctx->device)->dm;
 u64 start_offset;
 u32 page_idx;
 int err;

 dm->size = roundup(attr->length, MLX5_MEMIC_BASE_SIZE);

 err = mlx5_cmd_alloc_memic(dm_db, &dm->dev_addr,
       dm->size, attr->alignment);
 if (err)
  return err;

 page_idx = (dm->dev_addr - pci_resource_start(dm_db->dev->pdev, 0) -
      MLX5_CAP64_DEV_MEM(dm_db->dev, memic_bar_start_addr)) >>
      PAGE_SHIFT;

 err = uverbs_copy_to(attrs,
        MLX5_IB_ATTR_ALLOC_DM_RESP_PAGE_INDEX,
        &page_idx, sizeof(page_idx));
 if (err)
  goto err_dealloc;

 start_offset = dm->dev_addr & ~PAGE_MASK;
 err = uverbs_copy_to(attrs,
        MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET,
        &start_offset, sizeof(start_offset));
 if (err)
  goto err_dealloc;

 bitmap_set(to_mucontext(ctx)->dm_pages, page_idx,
     DIV_ROUND_UP(dm->size, PAGE_SIZE));

 return 0;

err_dealloc:
 mlx5_cmd_dealloc_memic(dm_db, dm->dev_addr, dm->size);

 return err;
}
