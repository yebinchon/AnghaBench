
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_intel_lvds_priv {int savePP_ON; int savePP_OFF; int saveLVDS; int savePP_CONTROL; int savePP_CYCLE; int saveBLC_PWM_CTL; int savePFIT_CONTROL; int savePFIT_PGM_RATIOS; } ;
struct gma_encoder {scalar_t__ dev_priv; } ;
struct drm_device {int dev; } ;
struct drm_connector {struct drm_device* dev; } ;


 int BLC_PWM_CTL ;
 int LVDS ;
 int LVDSPP_OFF ;
 int LVDSPP_ON ;
 int PFIT_CONTROL ;
 int PFIT_PGM_RATIOS ;
 int POWER_TARGET_ON ;
 int PP_CONTROL ;
 int PP_CYCLE ;
 int PP_ON ;
 int PP_STATUS ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int dev_dbg (int ,char*,int,int,int,int,int,int) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;

__attribute__((used)) static void psb_intel_lvds_restore(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 u32 pp_status;
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct psb_intel_lvds_priv *lvds_priv =
  (struct psb_intel_lvds_priv *)gma_encoder->dev_priv;

 dev_dbg(dev->dev, "(0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x)\n",
   lvds_priv->savePP_ON,
   lvds_priv->savePP_OFF,
   lvds_priv->saveLVDS,
   lvds_priv->savePP_CONTROL,
   lvds_priv->savePP_CYCLE,
   lvds_priv->saveBLC_PWM_CTL);

 REG_WRITE(BLC_PWM_CTL, lvds_priv->saveBLC_PWM_CTL);
 REG_WRITE(PFIT_CONTROL, lvds_priv->savePFIT_CONTROL);
 REG_WRITE(PFIT_PGM_RATIOS, lvds_priv->savePFIT_PGM_RATIOS);
 REG_WRITE(LVDSPP_ON, lvds_priv->savePP_ON);
 REG_WRITE(LVDSPP_OFF, lvds_priv->savePP_OFF);

 REG_WRITE(PP_CYCLE, lvds_priv->savePP_CYCLE);
 REG_WRITE(PP_CONTROL, lvds_priv->savePP_CONTROL);
 REG_WRITE(LVDS, lvds_priv->saveLVDS);

 if (lvds_priv->savePP_CONTROL & POWER_TARGET_ON) {
  REG_WRITE(PP_CONTROL, REG_READ(PP_CONTROL) |
   POWER_TARGET_ON);
  do {
   pp_status = REG_READ(PP_STATUS);
  } while ((pp_status & PP_ON) == 0);
 } else {
  REG_WRITE(PP_CONTROL, REG_READ(PP_CONTROL) &
   ~POWER_TARGET_ON);
  do {
   pp_status = REG_READ(PP_STATUS);
  } while (pp_status & PP_ON);
 }
}
