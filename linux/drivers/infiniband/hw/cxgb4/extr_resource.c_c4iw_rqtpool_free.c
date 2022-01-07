
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int cur; } ;
struct TYPE_4__ {int lock; TYPE_1__ rqt; } ;
struct c4iw_rdev {int rqt_kref; int rqt_pool; TYPE_2__ stats; } ;


 int MIN_RQT_SHIFT ;
 int destroy_rqtpool ;
 int gen_pool_free (int ,unsigned long,int) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,scalar_t__,int) ;
 scalar_t__ roundup (int,int) ;

void c4iw_rqtpool_free(struct c4iw_rdev *rdev, u32 addr, int size)
{
 pr_debug("addr 0x%x size %d\n", addr, size << 6);
 mutex_lock(&rdev->stats.lock);
 rdev->stats.rqt.cur -= roundup(size << 6, 1 << MIN_RQT_SHIFT);
 mutex_unlock(&rdev->stats.lock);
 gen_pool_free(rdev->rqt_pool, (unsigned long)addr, size << 6);
 kref_put(&rdev->rqt_kref, destroy_rqtpool);
}
