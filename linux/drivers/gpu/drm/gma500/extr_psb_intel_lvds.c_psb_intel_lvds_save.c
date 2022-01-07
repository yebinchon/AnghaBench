
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_lvds_priv {void* saveBLC_PWM_CTL; void* savePP_CYCLE; void* savePP_CONTROL; void* saveLVDS; void* savePP_OFF; void* savePP_ON; void* savePFIT_PGM_RATIOS; void* savePFIT_CONTROL; } ;
struct gma_encoder {scalar_t__ dev_priv; } ;
struct TYPE_2__ {int saveBLC_PWM_CTL; } ;
struct drm_psb_private {int backlight_duty_cycle; TYPE_1__ regs; } ;
struct drm_device {int dev; scalar_t__ dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BLC_PWM_CTL ;
 int LVDS ;
 int LVDSPP_OFF ;
 int LVDSPP_ON ;
 int PFIT_CONTROL ;
 int PFIT_PGM_RATIOS ;
 int PP_CONTROL ;
 int PP_CYCLE ;
 void* REG_READ (int ) ;
 int dev_dbg (int ,char*,void*,void*,void*,void*,void*,void*) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int psb_intel_lvds_get_max_backlight (struct drm_device*) ;

__attribute__((used)) static void psb_intel_lvds_save(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_psb_private *dev_priv =
  (struct drm_psb_private *)dev->dev_private;
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct psb_intel_lvds_priv *lvds_priv =
  (struct psb_intel_lvds_priv *)gma_encoder->dev_priv;

 lvds_priv->savePP_ON = REG_READ(LVDSPP_ON);
 lvds_priv->savePP_OFF = REG_READ(LVDSPP_OFF);
 lvds_priv->saveLVDS = REG_READ(LVDS);
 lvds_priv->savePP_CONTROL = REG_READ(PP_CONTROL);
 lvds_priv->savePP_CYCLE = REG_READ(PP_CYCLE);

 lvds_priv->saveBLC_PWM_CTL = REG_READ(BLC_PWM_CTL);
 lvds_priv->savePFIT_CONTROL = REG_READ(PFIT_CONTROL);
 lvds_priv->savePFIT_PGM_RATIOS = REG_READ(PFIT_PGM_RATIOS);


 dev_priv->backlight_duty_cycle = (dev_priv->regs.saveBLC_PWM_CTL &
      BACKLIGHT_DUTY_CYCLE_MASK);





 if (dev_priv->backlight_duty_cycle == 0)
  dev_priv->backlight_duty_cycle =
  psb_intel_lvds_get_max_backlight(dev);

 dev_dbg(dev->dev, "(0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x)\n",
   lvds_priv->savePP_ON,
   lvds_priv->savePP_OFF,
   lvds_priv->saveLVDS,
   lvds_priv->savePP_CONTROL,
   lvds_priv->savePP_CYCLE,
   lvds_priv->saveBLC_PWM_CTL);
}
