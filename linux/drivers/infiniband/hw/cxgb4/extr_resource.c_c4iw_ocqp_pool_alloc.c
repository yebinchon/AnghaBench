
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ cur; scalar_t__ max; } ;
struct TYPE_4__ {int lock; TYPE_1__ ocqp; } ;
struct c4iw_rdev {TYPE_2__ stats; int ocqp_pool; } ;


 int MIN_OCQP_SHIFT ;
 unsigned long gen_pool_alloc (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int) ;
 scalar_t__ roundup (int,int) ;

u32 c4iw_ocqp_pool_alloc(struct c4iw_rdev *rdev, int size)
{
 unsigned long addr = gen_pool_alloc(rdev->ocqp_pool, size);
 pr_debug("addr 0x%x size %d\n", (u32)addr, size);
 if (addr) {
  mutex_lock(&rdev->stats.lock);
  rdev->stats.ocqp.cur += roundup(size, 1 << MIN_OCQP_SHIFT);
  if (rdev->stats.ocqp.cur > rdev->stats.ocqp.max)
   rdev->stats.ocqp.max = rdev->stats.ocqp.cur;
  mutex_unlock(&rdev->stats.lock);
 }
 return (u32)addr;
}
