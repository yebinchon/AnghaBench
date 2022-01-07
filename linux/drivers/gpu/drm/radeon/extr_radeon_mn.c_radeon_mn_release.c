
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier_range {int event; int flags; int end; int start; struct mm_struct* mm; } ;
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;


 int MMU_NOTIFY_UNMAP ;
 int ULONG_MAX ;
 int radeon_mn_invalidate_range_start (struct mmu_notifier*,struct mmu_notifier_range*) ;

__attribute__((used)) static void radeon_mn_release(struct mmu_notifier *mn, struct mm_struct *mm)
{
 struct mmu_notifier_range range = {
  .mm = mm,
  .start = 0,
  .end = ULONG_MAX,
  .flags = 0,
  .event = MMU_NOTIFY_UNMAP,
 };

 radeon_mn_invalidate_range_start(mn, &range);
}
