
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_lm_instance {size_t id; int dspp; int pp; int caps; } ;
struct mdp5_hw_mixer {size_t lm; int flush_mask; int dspp; int pp; int caps; int name; } ;


 int ENOMEM ;
 struct mdp5_hw_mixer* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct mdp5_hw_mixer* kzalloc (int,int ) ;
 int mdp_ctl_flush_mask_lm (size_t) ;
 int * mixer_names ;

struct mdp5_hw_mixer *mdp5_mixer_init(const struct mdp5_lm_instance *lm)
{
 struct mdp5_hw_mixer *mixer;

 mixer = kzalloc(sizeof(*mixer), GFP_KERNEL);
 if (!mixer)
  return ERR_PTR(-ENOMEM);

 mixer->name = mixer_names[lm->id];
 mixer->lm = lm->id;
 mixer->caps = lm->caps;
 mixer->pp = lm->pp;
 mixer->dspp = lm->dspp;
 mixer->flush_mask = mdp_ctl_flush_mask_lm(lm->id);

 return mixer;
}
