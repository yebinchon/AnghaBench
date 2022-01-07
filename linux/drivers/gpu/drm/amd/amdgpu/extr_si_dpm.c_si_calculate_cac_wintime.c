
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int CAC_WINDOW_MASK ;
 int CG_CAC_CTRL ;
 int RREG32 (int ) ;
 int amdgpu_asic_get_xclk (struct amdgpu_device*) ;

__attribute__((used)) static u32 si_calculate_cac_wintime(struct amdgpu_device *adev)
{
 u32 xclk;
 u32 wintime;
 u32 cac_window;
 u32 cac_window_size;

 xclk = amdgpu_asic_get_xclk(adev);

 if (xclk == 0)
  return 0;

 cac_window = RREG32(CG_CAC_CTRL) & CAC_WINDOW_MASK;
 cac_window_size = ((cac_window & 0xFFFF0000) >> 16) * (cac_window & 0x0000FFFF);

 wintime = (cac_window_size * 100) / xclk;

 return wintime;
}
