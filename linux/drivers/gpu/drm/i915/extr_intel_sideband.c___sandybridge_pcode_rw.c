
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct drm_i915_private {int sb_lock; struct intel_uncore uncore; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int GEN6_PCODE_DATA ;
 int GEN6_PCODE_DATA1 ;
 int GEN6_PCODE_MAILBOX ;
 int GEN6_PCODE_READY ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ __intel_wait_for_register_fw (struct intel_uncore*,int ,int,int ,int,int,int*) ;
 int gen6_check_mailbox_status (int) ;
 int gen7_check_mailbox_status (int) ;
 int intel_uncore_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
      u32 mbox, u32 *val, u32 *val1,
      int fast_timeout_us,
      int slow_timeout_ms,
      bool is_read)
{
 struct intel_uncore *uncore = &i915->uncore;

 lockdep_assert_held(&i915->sb_lock);







 if (intel_uncore_read_fw(uncore, GEN6_PCODE_MAILBOX) & GEN6_PCODE_READY)
  return -EAGAIN;

 intel_uncore_write_fw(uncore, GEN6_PCODE_DATA, *val);
 intel_uncore_write_fw(uncore, GEN6_PCODE_DATA1, val1 ? *val1 : 0);
 intel_uncore_write_fw(uncore,
         GEN6_PCODE_MAILBOX, GEN6_PCODE_READY | mbox);

 if (__intel_wait_for_register_fw(uncore,
      GEN6_PCODE_MAILBOX,
      GEN6_PCODE_READY, 0,
      fast_timeout_us,
      slow_timeout_ms,
      &mbox))
  return -ETIMEDOUT;

 if (is_read)
  *val = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA);
 if (is_read && val1)
  *val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);

 if (INTEL_GEN(i915) > 6)
  return gen7_check_mailbox_status(mbox);
 else
  return gen6_check_mailbox_status(mbox);
}
