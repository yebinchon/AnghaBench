
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int asic_type; } ;







 int DRM_ERROR (char*,int) ;
 int PA_SC_RASTER_CONFIG__PKR_MAP__SHIFT ;
 int PA_SC_RASTER_CONFIG__PKR_YSEL__SHIFT ;
 int PA_SC_RASTER_CONFIG__RB_XSEL2__SHIFT ;
 int PA_SC_RASTER_CONFIG__RB_XSEL__SHIFT ;
 int PA_SC_RASTER_CONFIG__RB_YSEL__SHIFT ;
 int PA_SC_RASTER_CONFIG__SE_MAP__SHIFT ;
 int PA_SC_RASTER_CONFIG__SE_XSEL__SHIFT ;
 int PA_SC_RASTER_CONFIG__SE_YSEL__SHIFT ;

__attribute__((used)) static void gfx_v6_0_raster_config(struct amdgpu_device *adev, u32 *rconf)
{
 switch (adev->asic_type) {
 case 129:
 case 130:
  *rconf |=
      (2 << PA_SC_RASTER_CONFIG__RB_XSEL2__SHIFT) |
      (1 << PA_SC_RASTER_CONFIG__RB_XSEL__SHIFT) |
      (2 << PA_SC_RASTER_CONFIG__PKR_MAP__SHIFT) |
      (1 << PA_SC_RASTER_CONFIG__PKR_YSEL__SHIFT) |
      (2 << PA_SC_RASTER_CONFIG__SE_MAP__SHIFT) |
      (2 << PA_SC_RASTER_CONFIG__SE_XSEL__SHIFT) |
      (2 << PA_SC_RASTER_CONFIG__SE_YSEL__SHIFT);
  break;
 case 128:
  *rconf |=
      (1 << PA_SC_RASTER_CONFIG__RB_XSEL__SHIFT) |
      (2 << PA_SC_RASTER_CONFIG__PKR_MAP__SHIFT) |
      (1 << PA_SC_RASTER_CONFIG__PKR_YSEL__SHIFT);
  break;
 case 131:
  *rconf |= (1 << PA_SC_RASTER_CONFIG__RB_YSEL__SHIFT);
  break;
 case 132:
  *rconf |= 0x0;
  break;
 default:
  DRM_ERROR("unknown asic: 0x%x\n", adev->asic_type);
  break;
 }
}
