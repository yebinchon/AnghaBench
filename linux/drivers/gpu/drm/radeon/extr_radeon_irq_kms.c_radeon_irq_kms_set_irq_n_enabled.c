
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int DRM_DEBUG (char*,char const*,unsigned int) ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;

void radeon_irq_kms_set_irq_n_enabled(struct radeon_device *rdev,
          u32 reg, u32 mask,
          bool enable, const char *name, unsigned n)
{
 u32 tmp = RREG32(reg);


 if (!!(tmp & mask) == enable)
  return;

 if (enable) {
  DRM_DEBUG("%s%d interrupts enabled\n", name, n);
  WREG32(reg, tmp |= mask);
 } else {
  DRM_DEBUG("%s%d interrupts disabled\n", name, n);
  WREG32(reg, tmp & ~mask);
 }
}
