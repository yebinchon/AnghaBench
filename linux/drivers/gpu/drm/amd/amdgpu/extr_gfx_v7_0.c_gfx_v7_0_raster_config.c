
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int asic_type; } ;







 int DRM_ERROR (char*,int) ;
 int PKR_MAP (int) ;
 int PKR_XSEL (int) ;
 int PKR_YSEL (int) ;
 int RB_MAP_PKR0 (int) ;
 int RB_MAP_PKR1 (int) ;
 int RB_XSEL2 (int) ;
 int SE_MAP (int) ;
 int SE_PAIR_MAP (int) ;
 int SE_PAIR_XSEL (int) ;
 int SE_PAIR_YSEL (int) ;
 int SE_XSEL (int) ;
 int SE_YSEL (int) ;

__attribute__((used)) static void
gfx_v7_0_raster_config(struct amdgpu_device *adev, u32 *rconf, u32 *rconf1)
{
 switch (adev->asic_type) {
 case 132:
  *rconf |= RB_MAP_PKR0(2) | RB_XSEL2(1) | SE_MAP(2) |
     SE_XSEL(1) | SE_YSEL(1);
  *rconf1 |= 0x0;
  break;
 case 131:
  *rconf |= RB_MAP_PKR0(2) | RB_MAP_PKR1(2) |
     RB_XSEL2(1) | PKR_MAP(2) | PKR_XSEL(1) |
     PKR_YSEL(1) | SE_MAP(2) | SE_XSEL(2) |
     SE_YSEL(3);
  *rconf1 |= SE_PAIR_MAP(2) | SE_PAIR_XSEL(3) |
      SE_PAIR_YSEL(2);
  break;
 case 129:
  *rconf |= RB_MAP_PKR0(2);
  *rconf1 |= 0x0;
  break;
 case 130:
 case 128:
  *rconf |= 0x0;
  *rconf1 |= 0x0;
  break;
 default:
  DRM_ERROR("unknown asic: 0x%x\n", adev->asic_type);
  break;
 }
}
