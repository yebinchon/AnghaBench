
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 scalar_t__ ASIC_IS_DCE3 (struct radeon_device*) ;
 int DC_HOT_PLUG_DETECT1_INT_CONTROL ;
 int DC_HOT_PLUG_DETECT2_INT_CONTROL ;
 int DC_HOT_PLUG_DETECT3_INT_CONTROL ;
 int DC_HOT_PLUG_DETECTx_INT_POLARITY ;
 int DC_HPD1_INT_CONTROL ;
 int DC_HPD2_INT_CONTROL ;
 int DC_HPD3_INT_CONTROL ;
 int DC_HPD4_INT_CONTROL ;
 int DC_HPD5_INT_CONTROL ;
 int DC_HPD6_INT_CONTROL ;
 int DC_HPDx_INT_POLARITY ;






 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int r600_hpd_sense (struct radeon_device*,int) ;

void r600_hpd_set_polarity(struct radeon_device *rdev,
      enum radeon_hpd_id hpd)
{
 u32 tmp;
 bool connected = r600_hpd_sense(rdev, hpd);

 if (ASIC_IS_DCE3(rdev)) {
  switch (hpd) {
  case 133:
   tmp = RREG32(DC_HPD1_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HPDx_INT_POLARITY;
   else
    tmp |= DC_HPDx_INT_POLARITY;
   WREG32(DC_HPD1_INT_CONTROL, tmp);
   break;
  case 132:
   tmp = RREG32(DC_HPD2_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HPDx_INT_POLARITY;
   else
    tmp |= DC_HPDx_INT_POLARITY;
   WREG32(DC_HPD2_INT_CONTROL, tmp);
   break;
  case 131:
   tmp = RREG32(DC_HPD3_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HPDx_INT_POLARITY;
   else
    tmp |= DC_HPDx_INT_POLARITY;
   WREG32(DC_HPD3_INT_CONTROL, tmp);
   break;
  case 130:
   tmp = RREG32(DC_HPD4_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HPDx_INT_POLARITY;
   else
    tmp |= DC_HPDx_INT_POLARITY;
   WREG32(DC_HPD4_INT_CONTROL, tmp);
   break;
  case 129:
   tmp = RREG32(DC_HPD5_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HPDx_INT_POLARITY;
   else
    tmp |= DC_HPDx_INT_POLARITY;
   WREG32(DC_HPD5_INT_CONTROL, tmp);
   break;

  case 128:
   tmp = RREG32(DC_HPD6_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HPDx_INT_POLARITY;
   else
    tmp |= DC_HPDx_INT_POLARITY;
   WREG32(DC_HPD6_INT_CONTROL, tmp);
   break;
  default:
   break;
  }
 } else {
  switch (hpd) {
  case 133:
   tmp = RREG32(DC_HOT_PLUG_DETECT1_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HOT_PLUG_DETECTx_INT_POLARITY;
   else
    tmp |= DC_HOT_PLUG_DETECTx_INT_POLARITY;
   WREG32(DC_HOT_PLUG_DETECT1_INT_CONTROL, tmp);
   break;
  case 132:
   tmp = RREG32(DC_HOT_PLUG_DETECT2_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HOT_PLUG_DETECTx_INT_POLARITY;
   else
    tmp |= DC_HOT_PLUG_DETECTx_INT_POLARITY;
   WREG32(DC_HOT_PLUG_DETECT2_INT_CONTROL, tmp);
   break;
  case 131:
   tmp = RREG32(DC_HOT_PLUG_DETECT3_INT_CONTROL);
   if (connected)
    tmp &= ~DC_HOT_PLUG_DETECTx_INT_POLARITY;
   else
    tmp |= DC_HOT_PLUG_DETECTx_INT_POLARITY;
   WREG32(DC_HOT_PLUG_DETECT3_INT_CONTROL, tmp);
   break;
  default:
   break;
  }
 }
}
