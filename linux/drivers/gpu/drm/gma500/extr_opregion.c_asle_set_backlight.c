
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct opregion_asle {int cblv; } ;
struct TYPE_4__ {struct opregion_asle* asle; } ;
struct drm_psb_private {struct backlight_device* backlight_device; TYPE_2__ opregion; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_3__ {int max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int ASLE_BACKLIGHT_FAILED ;
 int ASLE_BCLP_MSK ;
 int ASLE_BCLP_VALID ;
 int ASLE_CBLV_VALID ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int gma_backlight_set (struct drm_device*,int) ;

__attribute__((used)) static u32 asle_set_backlight(struct drm_device *dev, u32 bclp)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct opregion_asle *asle = dev_priv->opregion.asle;
 struct backlight_device *bd = dev_priv->backlight_device;

 DRM_DEBUG_DRIVER("asle set backlight %x\n", bclp);

 if (!(bclp & ASLE_BCLP_VALID))
  return ASLE_BACKLIGHT_FAILED;

 if (bd == ((void*)0))
  return ASLE_BACKLIGHT_FAILED;

 bclp &= ASLE_BCLP_MSK;
 if (bclp > 255)
  return ASLE_BACKLIGHT_FAILED;

 gma_backlight_set(dev, bclp * bd->props.max_brightness / 255);

 asle->cblv = (bclp * 0x64) / 0xff | ASLE_CBLV_VALID;

 return 0;
}
