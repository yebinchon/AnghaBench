
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mdp4_crtc {int vblank; int pending; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int atomic_or (int ,int *) ;
 TYPE_1__* get_kms (struct drm_crtc*) ;
 int mdp_irq_register (int *,int *) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void request_pending(struct drm_crtc *crtc, uint32_t pending)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);

 atomic_or(pending, &mdp4_crtc->pending);
 mdp_irq_register(&get_kms(crtc)->base, &mdp4_crtc->vblank);
}
