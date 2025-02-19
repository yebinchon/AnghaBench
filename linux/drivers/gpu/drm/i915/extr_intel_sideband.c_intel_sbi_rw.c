
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct intel_uncore {int dummy; } ;
struct drm_i915_private {int sb_lock; struct intel_uncore uncore; } ;
typedef enum intel_sbi_destination { ____Placeholder_intel_sbi_destination } intel_sbi_destination ;


 int BIT (int) ;
 int DRM_ERROR (char*,...) ;
 int EBUSY ;
 int ENXIO ;
 int ETIMEDOUT ;
 int SBI_ADDR ;
 int SBI_BUSY ;
 int SBI_CTL_DEST_ICLK ;
 int SBI_CTL_DEST_MPHY ;
 int SBI_CTL_OP_CRRD ;
 int SBI_CTL_OP_IORD ;
 int SBI_CTL_STAT ;
 int SBI_DATA ;
 int SBI_ICLK ;
 int SBI_RESPONSE_FAIL ;
 scalar_t__ __intel_wait_for_register_fw (struct intel_uncore*,int ,int,int ,int,int,int*) ;
 int intel_uncore_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int) ;
 scalar_t__ intel_wait_for_register_fw (struct intel_uncore*,int ,int,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
   enum intel_sbi_destination destination,
   u32 *val, bool is_read)
{
 struct intel_uncore *uncore = &i915->uncore;
 u32 cmd;

 lockdep_assert_held(&i915->sb_lock);

 if (intel_wait_for_register_fw(uncore,
           SBI_CTL_STAT, SBI_BUSY, 0,
           100)) {
  DRM_ERROR("timeout waiting for SBI to become ready\n");
  return -EBUSY;
 }

 intel_uncore_write_fw(uncore, SBI_ADDR, (u32)reg << 16);
 intel_uncore_write_fw(uncore, SBI_DATA, is_read ? 0 : *val);

 if (destination == SBI_ICLK)
  cmd = SBI_CTL_DEST_ICLK | SBI_CTL_OP_CRRD;
 else
  cmd = SBI_CTL_DEST_MPHY | SBI_CTL_OP_IORD;
 if (!is_read)
  cmd |= BIT(8);
 intel_uncore_write_fw(uncore, SBI_CTL_STAT, cmd | SBI_BUSY);

 if (__intel_wait_for_register_fw(uncore,
      SBI_CTL_STAT, SBI_BUSY, 0,
      100, 100, &cmd)) {
  DRM_ERROR("timeout waiting for SBI to complete read\n");
  return -ETIMEDOUT;
 }

 if (cmd & SBI_RESPONSE_FAIL) {
  DRM_ERROR("error during SBI read of reg %x\n", reg);
  return -ENXIO;
 }

 if (is_read)
  *val = intel_uncore_read_fw(uncore, SBI_DATA);

 return 0;
}
