
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MC_SHARED_CHMAP ;
 int NOOFCHAN_MASK ;
 int NOOFCHAN_SHIFT ;
 int RREG32 (int ) ;

__attribute__((used)) static u32 cik_get_number_of_dram_channels(struct radeon_device *rdev)
{
 u32 tmp = RREG32(MC_SHARED_CHMAP);

 switch ((tmp & NOOFCHAN_MASK) >> NOOFCHAN_SHIFT) {
 case 0:
 default:
  return 1;
 case 1:
  return 2;
 case 2:
  return 4;
 case 3:
  return 8;
 case 4:
  return 3;
 case 5:
  return 6;
 case 6:
  return 10;
 case 7:
  return 12;
 case 8:
  return 16;
 }
}
