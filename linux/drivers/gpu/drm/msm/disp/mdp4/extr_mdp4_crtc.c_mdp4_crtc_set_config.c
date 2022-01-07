
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp4_kms {int dummy; } ;
struct mdp4_crtc {int dma; } ;
struct drm_crtc {int dummy; } ;


 int REG_MDP4_DMA_CONFIG (int ) ;
 struct mdp4_kms* get_kms (struct drm_crtc*) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

void mdp4_crtc_set_config(struct drm_crtc *crtc, uint32_t config)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct mdp4_kms *mdp4_kms = get_kms(crtc);

 mdp4_write(mdp4_kms, REG_MDP4_DMA_CONFIG(mdp4_crtc->dma), config);
}
