
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int) ;
 int WREG32 (int,int) ;

void radeon_program_register_sequence(struct radeon_device *rdev,
          const u32 *registers,
          const u32 array_size)
{
 u32 tmp, reg, and_mask, or_mask;
 int i;

 if (array_size % 3)
  return;

 for (i = 0; i < array_size; i +=3) {
  reg = registers[i + 0];
  and_mask = registers[i + 1];
  or_mask = registers[i + 2];

  if (and_mask == 0xffffffff) {
   tmp = or_mask;
  } else {
   tmp = RREG32(reg);
   tmp &= ~and_mask;
   tmp |= or_mask;
  }
  WREG32(reg, tmp);
 }
}
