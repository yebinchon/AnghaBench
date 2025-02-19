
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct anx78xx {int * map; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*,int) ;
 size_t I2C_IDX_RX_P0 ;
 int SP_CKDT_CHG ;
 int SP_INT_STATUS1_REG ;
 int SP_SCDT_CHG ;
 int SP_SYSTEM_STATUS_REG ;
 unsigned int SP_TMDS_CLOCK_DET ;
 unsigned int SP_TMDS_DE_DET ;
 int anx78xx_dp_link_training (struct anx78xx*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void anx78xx_handle_hdmi_int_1(struct anx78xx *anx78xx, u8 irq)
{
 unsigned int value;
 int err;

 DRM_DEBUG_KMS("Handle HDMI interrupt 1: %02x\n", irq);

 err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
      irq);
 if (err) {
  DRM_ERROR("Write HDMI int 1 failed: %d\n", err);
  return;
 }

 if ((irq & SP_CKDT_CHG) || (irq & SP_SCDT_CHG)) {
  DRM_DEBUG_KMS("IRQ: HDMI input detected\n");

  err = regmap_read(anx78xx->map[I2C_IDX_RX_P0],
      SP_SYSTEM_STATUS_REG, &value);
  if (err) {
   DRM_ERROR("Read system status reg failed: %d\n", err);
   return;
  }

  if (!(value & SP_TMDS_CLOCK_DET)) {
   DRM_DEBUG_KMS("IRQ: *** Waiting for HDMI clock ***\n");
   return;
  }

  if (!(value & SP_TMDS_DE_DET)) {
   DRM_DEBUG_KMS("IRQ: *** Waiting for HDMI signal ***\n");
   return;
  }

  err = anx78xx_dp_link_training(anx78xx);
  if (err)
   DRM_ERROR("Failed to start link training: %d\n", err);
 }
}
