
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ cur; scalar_t__ max; int fail; } ;
struct TYPE_6__ {int lock; TYPE_2__ rqt; } ;
struct TYPE_4__ {int pdev; } ;
struct c4iw_rdev {TYPE_3__ stats; int rqt_kref; TYPE_1__ lldi; int rqt_pool; } ;


 int MIN_RQT_SHIFT ;
 unsigned long gen_pool_alloc (int ,int) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_name (int ) ;
 int pr_debug (char*,int ,int) ;
 int pr_warn_ratelimited (char*,int ) ;
 scalar_t__ roundup (int,int) ;

u32 c4iw_rqtpool_alloc(struct c4iw_rdev *rdev, int size)
{
 unsigned long addr = gen_pool_alloc(rdev->rqt_pool, size << 6);
 pr_debug("addr 0x%x size %d\n", (u32)addr, size << 6);
 if (!addr)
  pr_warn_ratelimited("%s: Out of RQT memory\n",
        pci_name(rdev->lldi.pdev));
 mutex_lock(&rdev->stats.lock);
 if (addr) {
  rdev->stats.rqt.cur += roundup(size << 6, 1 << MIN_RQT_SHIFT);
  if (rdev->stats.rqt.cur > rdev->stats.rqt.max)
   rdev->stats.rqt.max = rdev->stats.rqt.cur;
  kref_get(&rdev->rqt_kref);
 } else
  rdev->stats.rqt.fail++;
 mutex_unlock(&rdev->stats.lock);
 return (u32)addr;
}
