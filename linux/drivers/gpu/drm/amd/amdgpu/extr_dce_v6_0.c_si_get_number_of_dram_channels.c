
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int MC_SHARED_CHMAP__NOOFCHAN_MASK ;
 int MC_SHARED_CHMAP__NOOFCHAN__SHIFT ;
 int RREG32 (int ) ;
 int mmMC_SHARED_CHMAP ;

__attribute__((used)) static u32 si_get_number_of_dram_channels(struct amdgpu_device *adev)
{
 u32 tmp = RREG32(mmMC_SHARED_CHMAP);

 switch ((tmp & MC_SHARED_CHMAP__NOOFCHAN_MASK) >> MC_SHARED_CHMAP__NOOFCHAN__SHIFT) {
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
