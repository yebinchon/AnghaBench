
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_kms_funcs {int base; } ;
struct mdp_kms {int base; int irq_list; struct mdp_kms_funcs const* funcs; } ;


 int INIT_LIST_HEAD (int *) ;
 int msm_kms_init (int *,int *) ;

__attribute__((used)) static inline void mdp_kms_init(struct mdp_kms *mdp_kms,
  const struct mdp_kms_funcs *funcs)
{
 mdp_kms->funcs = funcs;
 INIT_LIST_HEAD(&mdp_kms->irq_list);
 msm_kms_init(&mdp_kms->base, &funcs->base);
}
