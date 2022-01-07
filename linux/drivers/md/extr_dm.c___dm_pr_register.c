
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pr_ops {int (* pr_register ) (TYPE_3__*,int ,int ,int ) ;} ;
struct dm_target {int dummy; } ;
struct dm_pr {int flags; int new_key; int old_key; } ;
struct dm_dev {TYPE_3__* bdev; } ;
typedef int sector_t ;
struct TYPE_6__ {TYPE_2__* bd_disk; } ;
struct TYPE_5__ {TYPE_1__* fops; } ;
struct TYPE_4__ {struct pr_ops* pr_ops; } ;


 int EOPNOTSUPP ;
 int stub1 (TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static int __dm_pr_register(struct dm_target *ti, struct dm_dev *dev,
       sector_t start, sector_t len, void *data)
{
 struct dm_pr *pr = data;
 const struct pr_ops *ops = dev->bdev->bd_disk->fops->pr_ops;

 if (!ops || !ops->pr_register)
  return -EOPNOTSUPP;
 return ops->pr_register(dev->bdev, pr->old_key, pr->new_key, pr->flags);
}
