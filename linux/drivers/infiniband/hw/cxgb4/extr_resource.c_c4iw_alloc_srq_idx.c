
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cur; scalar_t__ max; int fail; } ;
struct TYPE_6__ {int lock; TYPE_2__ srqt; } ;
struct TYPE_4__ {int srq_table; } ;
struct c4iw_rdev {TYPE_3__ stats; TYPE_1__ resource; } ;


 int ENOMEM ;
 int c4iw_id_alloc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int c4iw_alloc_srq_idx(struct c4iw_rdev *rdev)
{
 int idx;

 idx = c4iw_id_alloc(&rdev->resource.srq_table);
 mutex_lock(&rdev->stats.lock);
 if (idx == -1) {
  rdev->stats.srqt.fail++;
  mutex_unlock(&rdev->stats.lock);
  return -ENOMEM;
 }
 rdev->stats.srqt.cur++;
 if (rdev->stats.srqt.cur > rdev->stats.srqt.max)
  rdev->stats.srqt.max = rdev->stats.srqt.cur;
 mutex_unlock(&rdev->stats.lock);
 return idx;
}
