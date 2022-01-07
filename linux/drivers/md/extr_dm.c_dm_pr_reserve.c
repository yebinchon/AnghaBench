
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pr_ops {int (* pr_reserve ) (struct block_device*,int ,int,int ) ;} ;
struct mapped_device {int dummy; } ;
struct block_device {TYPE_2__* bd_disk; } ;
typedef enum pr_type { ____Placeholder_pr_type } pr_type ;
struct TYPE_4__ {TYPE_1__* fops; struct mapped_device* private_data; } ;
struct TYPE_3__ {struct pr_ops* pr_ops; } ;


 int EOPNOTSUPP ;
 int dm_prepare_ioctl (struct mapped_device*,int*,struct block_device**) ;
 int dm_unprepare_ioctl (struct mapped_device*,int) ;
 int stub1 (struct block_device*,int ,int,int ) ;

__attribute__((used)) static int dm_pr_reserve(struct block_device *bdev, u64 key, enum pr_type type,
    u32 flags)
{
 struct mapped_device *md = bdev->bd_disk->private_data;
 const struct pr_ops *ops;
 int r, srcu_idx;

 r = dm_prepare_ioctl(md, &srcu_idx, &bdev);
 if (r < 0)
  goto out;

 ops = bdev->bd_disk->fops->pr_ops;
 if (ops && ops->pr_reserve)
  r = ops->pr_reserve(bdev, key, type, flags);
 else
  r = -EOPNOTSUPP;
out:
 dm_unprepare_ioctl(md, srcu_idx);
 return r;
}
