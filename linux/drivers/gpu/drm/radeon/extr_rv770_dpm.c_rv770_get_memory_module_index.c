
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;


 int BIOS_SCRATCH_4 ;
 int RREG32 (int ) ;

u8 rv770_get_memory_module_index(struct radeon_device *rdev)
{
 return (u8) ((RREG32(BIOS_SCRATCH_4) >> 16) & 0xff);
}
