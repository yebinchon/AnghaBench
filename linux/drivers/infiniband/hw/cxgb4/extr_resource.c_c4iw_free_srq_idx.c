
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cur; } ;
struct TYPE_6__ {int lock; TYPE_2__ srqt; } ;
struct TYPE_4__ {int srq_table; } ;
struct c4iw_rdev {TYPE_3__ stats; TYPE_1__ resource; } ;


 int c4iw_id_free (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void c4iw_free_srq_idx(struct c4iw_rdev *rdev, int idx)
{
 c4iw_id_free(&rdev->resource.srq_table, idx);
 mutex_lock(&rdev->stats.lock);
 rdev->stats.srqt.cur--;
 mutex_unlock(&rdev->stats.lock);
}
