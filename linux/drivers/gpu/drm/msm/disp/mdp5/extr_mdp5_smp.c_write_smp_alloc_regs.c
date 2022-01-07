
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_smp {int blk_cnt; int * alloc_r; int * alloc_w; } ;
struct mdp5_kms {int dummy; } ;


 int REG_MDP5_SMP_ALLOC_R_REG (int) ;
 int REG_MDP5_SMP_ALLOC_W_REG (int) ;
 struct mdp5_kms* get_kms (struct mdp5_smp*) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;

__attribute__((used)) static void write_smp_alloc_regs(struct mdp5_smp *smp)
{
 struct mdp5_kms *mdp5_kms = get_kms(smp);
 int i, num_regs;

 num_regs = smp->blk_cnt / 3 + 1;

 for (i = 0; i < num_regs; i++) {
  mdp5_write(mdp5_kms, REG_MDP5_SMP_ALLOC_W_REG(i),
      smp->alloc_w[i]);
  mdp5_write(mdp5_kms, REG_MDP5_SMP_ALLOC_R_REG(i),
      smp->alloc_r[i]);
 }
}
