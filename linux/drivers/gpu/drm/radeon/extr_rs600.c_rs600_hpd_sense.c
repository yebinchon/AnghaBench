
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 int G_007D04_DC_HOT_PLUG_DETECT1_SENSE (int ) ;
 int G_007D14_DC_HOT_PLUG_DETECT2_SENSE (int ) ;


 int RREG32 (int ) ;
 int R_007D04_DC_HOT_PLUG_DETECT1_INT_STATUS ;
 int R_007D14_DC_HOT_PLUG_DETECT2_INT_STATUS ;

bool rs600_hpd_sense(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
 u32 tmp;
 bool connected = 0;

 switch (hpd) {
 case 129:
  tmp = RREG32(R_007D04_DC_HOT_PLUG_DETECT1_INT_STATUS);
  if (G_007D04_DC_HOT_PLUG_DETECT1_SENSE(tmp))
   connected = 1;
  break;
 case 128:
  tmp = RREG32(R_007D14_DC_HOT_PLUG_DETECT2_INT_STATUS);
  if (G_007D14_DC_HOT_PLUG_DETECT2_SENSE(tmp))
   connected = 1;
  break;
 default:
  break;
 }
 return connected;
}
