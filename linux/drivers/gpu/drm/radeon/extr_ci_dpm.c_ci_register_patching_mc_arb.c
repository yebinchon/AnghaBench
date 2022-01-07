
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int MC_SEQ_MISC0 ;
 int RREG32 (int ) ;

__attribute__((used)) static void ci_register_patching_mc_arb(struct radeon_device *rdev,
     const u32 engine_clock,
     const u32 memory_clock,
     u32 *dram_timimg2)
{
 bool patch;
 u32 tmp, tmp2;

 tmp = RREG32(MC_SEQ_MISC0);
 patch = ((tmp & 0x0000f00) == 0x300) ? 1 : 0;

 if (patch &&
     ((rdev->pdev->device == 0x67B0) ||
      (rdev->pdev->device == 0x67B1))) {
  if ((memory_clock > 100000) && (memory_clock <= 125000)) {
   tmp2 = (((0x31 * engine_clock) / 125000) - 1) & 0xff;
   *dram_timimg2 &= ~0x00ff0000;
   *dram_timimg2 |= tmp2 << 16;
  } else if ((memory_clock > 125000) && (memory_clock <= 137500)) {
   tmp2 = (((0x36 * engine_clock) / 137500) - 1) & 0xff;
   *dram_timimg2 &= ~0x00ff0000;
   *dram_timimg2 |= tmp2 << 16;
  }
 }
}
