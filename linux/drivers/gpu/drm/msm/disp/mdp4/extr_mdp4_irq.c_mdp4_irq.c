
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_kms {int dummy; } ;
struct msm_drm_private {unsigned int num_crtcs; int * crtcs; } ;
struct mdp_kms {int dummy; } ;
struct mdp4_kms {struct drm_device* dev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REG_MDP4_INTR_CLEAR ;
 int REG_MDP4_INTR_ENABLE ;
 int REG_MDP4_INTR_STATUS ;
 int VERB (char*,int) ;
 int drm_handle_vblank (struct drm_device*,unsigned int) ;
 int mdp4_crtc_vblank (int ) ;
 int mdp4_read (struct mdp4_kms*,int ) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 int mdp_dispatch_irqs (struct mdp_kms*,int) ;
 struct mdp4_kms* to_mdp4_kms (struct mdp_kms*) ;
 struct mdp_kms* to_mdp_kms (struct msm_kms*) ;

irqreturn_t mdp4_irq(struct msm_kms *kms)
{
 struct mdp_kms *mdp_kms = to_mdp_kms(kms);
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(mdp_kms);
 struct drm_device *dev = mdp4_kms->dev;
 struct msm_drm_private *priv = dev->dev_private;
 unsigned int id;
 uint32_t status, enable;

 enable = mdp4_read(mdp4_kms, REG_MDP4_INTR_ENABLE);
 status = mdp4_read(mdp4_kms, REG_MDP4_INTR_STATUS) & enable;
 mdp4_write(mdp4_kms, REG_MDP4_INTR_CLEAR, status);

 VERB("status=%08x", status);

 mdp_dispatch_irqs(mdp_kms, status);

 for (id = 0; id < priv->num_crtcs; id++)
  if (status & mdp4_crtc_vblank(priv->crtcs[id]))
   drm_handle_vblank(dev, id);

 return IRQ_HANDLED;
}
