
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int dummy; } ;
typedef int intel_engine_mask_t ;


 int ALL_ENGINES ;
 int RESET_MAX_RETRIES ;
 int __intel_gt_reset (struct intel_gt*,int ) ;
 int gt_reset (struct intel_gt*,int ) ;
 int gt_revoke (struct intel_gt*) ;
 int msleep (int) ;

__attribute__((used)) static int do_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
{
 int err, i;

 gt_revoke(gt);

 err = __intel_gt_reset(gt, ALL_ENGINES);
 for (i = 0; err && i < RESET_MAX_RETRIES; i++) {
  msleep(10 * (i + 1));
  err = __intel_gt_reset(gt, ALL_ENGINES);
 }
 if (err)
  return err;

 return gt_reset(gt, stalled_mask);
}
