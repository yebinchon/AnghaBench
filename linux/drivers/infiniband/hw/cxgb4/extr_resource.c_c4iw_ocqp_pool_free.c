
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int cur; } ;
struct TYPE_4__ {int lock; TYPE_1__ ocqp; } ;
struct c4iw_rdev {int ocqp_pool; TYPE_2__ stats; } ;


 int MIN_OCQP_SHIFT ;
 int gen_pool_free (int ,unsigned long,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,scalar_t__,int) ;
 scalar_t__ roundup (int,int) ;

void c4iw_ocqp_pool_free(struct c4iw_rdev *rdev, u32 addr, int size)
{
 pr_debug("addr 0x%x size %d\n", addr, size);
 mutex_lock(&rdev->stats.lock);
 rdev->stats.ocqp.cur -= roundup(size, 1 << MIN_OCQP_SHIFT);
 mutex_unlock(&rdev->stats.lock);
 gen_pool_free(rdev->ocqp_pool, (unsigned long)addr, size);
}
