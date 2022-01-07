
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct anx78xx {int * edid; int * map; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*,int) ;
 size_t I2C_IDX_TX_P2 ;
 int SP_COMMON_INT_STATUS4_REG ;
 int SP_HPD_LOST ;
 int SP_HPD_PLUG ;
 int anx78xx_poweroff (struct anx78xx*) ;
 int kfree (int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static bool anx78xx_handle_common_int_4(struct anx78xx *anx78xx, u8 irq)
{
 bool event = 0;
 int err;

 DRM_DEBUG_KMS("Handle common interrupt 4: %02x\n", irq);

 err = regmap_write(anx78xx->map[I2C_IDX_TX_P2],
      SP_COMMON_INT_STATUS4_REG, irq);
 if (err) {
  DRM_ERROR("Failed to write SP_COMMON_INT_STATUS4 %d\n", err);
  return event;
 }

 if (irq & SP_HPD_LOST) {
  DRM_DEBUG_KMS("IRQ: Hot plug detect - cable is pulled out\n");
  event = 1;
  anx78xx_poweroff(anx78xx);

  kfree(anx78xx->edid);
  anx78xx->edid = ((void*)0);
 } else if (irq & SP_HPD_PLUG) {
  DRM_DEBUG_KMS("IRQ: Hot plug detect - cable plug\n");
  event = 1;
 }

 return event;
}
