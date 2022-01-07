
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_smp_state {int state; } ;
struct mdp5_smp_block {int reserved; int reserved_state; int mmb_size; int mmb_count; } ;
struct mdp5_smp {int reserved; int blk_cnt; int blk_size; int dev; } ;
struct mdp5_kms {int dev; } ;
struct mdp5_global_state {struct mdp5_smp_state smp; } ;


 int ENOMEM ;
 struct mdp5_smp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int bitmap_copy (int ,int ,int ) ;
 struct mdp5_smp* kzalloc (int,int ) ;
 struct mdp5_global_state* mdp5_get_existing_global_state (struct mdp5_kms*) ;
 int mdp5_smp_destroy (struct mdp5_smp*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ unlikely (int) ;

struct mdp5_smp *mdp5_smp_init(struct mdp5_kms *mdp5_kms, const struct mdp5_smp_block *cfg)
{
 struct mdp5_smp_state *state;
 struct mdp5_global_state *global_state;
 struct mdp5_smp *smp = ((void*)0);
 int ret;

 smp = kzalloc(sizeof(*smp), GFP_KERNEL);
 if (unlikely(!smp)) {
  ret = -ENOMEM;
  goto fail;
 }

 smp->dev = mdp5_kms->dev;
 smp->blk_cnt = cfg->mmb_count;
 smp->blk_size = cfg->mmb_size;

 global_state = mdp5_get_existing_global_state(mdp5_kms);
 state = &global_state->smp;


 bitmap_copy(state->state, cfg->reserved_state, smp->blk_cnt);
 memcpy(smp->reserved, cfg->reserved, sizeof(smp->reserved));

 return smp;
fail:
 if (smp)
  mdp5_smp_destroy(smp);

 return ERR_PTR(ret);
}
