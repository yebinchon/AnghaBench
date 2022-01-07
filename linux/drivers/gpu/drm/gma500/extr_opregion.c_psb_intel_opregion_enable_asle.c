
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opregion_asle {int tche; int ardy; } ;
struct TYPE_2__ {struct opregion_asle* asle; } ;
struct drm_psb_private {TYPE_1__ opregion; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int ASLE_ALS_EN ;
 int ASLE_BLC_EN ;
 int ASLE_PFIT_EN ;
 int ASLE_PFMB_EN ;
 int PIPE_LEGACY_BLC_EVENT_ENABLE ;
 int psb_enable_pipestat (struct drm_psb_private*,int,int ) ;
 scalar_t__ system_opregion ;

void psb_intel_opregion_enable_asle(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct opregion_asle *asle = dev_priv->opregion.asle;

 if (asle && system_opregion ) {


  psb_enable_pipestat(dev_priv, 0, PIPE_LEGACY_BLC_EVENT_ENABLE);
  psb_enable_pipestat(dev_priv, 1, PIPE_LEGACY_BLC_EVENT_ENABLE);

  asle->tche = ASLE_ALS_EN | ASLE_BLC_EN | ASLE_PFIT_EN
        | ASLE_PFMB_EN;
  asle->ardy = 1;
 }
}
