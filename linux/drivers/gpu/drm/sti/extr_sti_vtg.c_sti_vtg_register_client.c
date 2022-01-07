
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {int notifier_list; struct drm_crtc* crtc; } ;
struct notifier_block {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int raw_notifier_chain_register (int *,struct notifier_block*) ;

int sti_vtg_register_client(struct sti_vtg *vtg, struct notifier_block *nb,
       struct drm_crtc *crtc)
{
 vtg->crtc = crtc;
 return raw_notifier_chain_register(&vtg->notifier_list, nb);
}
