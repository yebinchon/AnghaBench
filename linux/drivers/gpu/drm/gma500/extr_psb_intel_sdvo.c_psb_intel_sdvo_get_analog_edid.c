
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_psb_private {size_t crt_ddc_pin; TYPE_2__* gmbus; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_4__ {int adapter; } ;
struct TYPE_3__ {struct drm_psb_private* dev_private; } ;


 struct edid* drm_get_edid (struct drm_connector*,int *) ;

__attribute__((used)) static struct edid *
psb_intel_sdvo_get_analog_edid(struct drm_connector *connector)
{
 struct drm_psb_private *dev_priv = connector->dev->dev_private;

 return drm_get_edid(connector,
       &dev_priv->gmbus[dev_priv->crt_ddc_pin].adapter);
}
