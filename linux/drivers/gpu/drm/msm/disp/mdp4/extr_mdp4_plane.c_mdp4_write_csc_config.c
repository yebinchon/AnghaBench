
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_kms {int dummy; } ;
struct csc_cfg {int * post_clamp; int * pre_clamp; int * post_bias; int * pre_bias; int * matrix; } ;
typedef enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;


 int ARRAY_SIZE (int *) ;
 int REG_MDP4_PIPE_CSC_MV (int,int) ;
 int REG_MDP4_PIPE_CSC_POST_BV (int,int) ;
 int REG_MDP4_PIPE_CSC_POST_LV (int,int) ;
 int REG_MDP4_PIPE_CSC_PRE_BV (int,int) ;
 int REG_MDP4_PIPE_CSC_PRE_LV (int,int) ;
 int mdp4_write (struct mdp4_kms*,int ,int ) ;

__attribute__((used)) static void mdp4_write_csc_config(struct mdp4_kms *mdp4_kms,
  enum mdp4_pipe pipe, struct csc_cfg *csc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(csc->matrix); i++) {
  mdp4_write(mdp4_kms, REG_MDP4_PIPE_CSC_MV(pipe, i),
    csc->matrix[i]);
 }

 for (i = 0; i < ARRAY_SIZE(csc->post_bias) ; i++) {
  mdp4_write(mdp4_kms, REG_MDP4_PIPE_CSC_PRE_BV(pipe, i),
    csc->pre_bias[i]);

  mdp4_write(mdp4_kms, REG_MDP4_PIPE_CSC_POST_BV(pipe, i),
    csc->post_bias[i]);
 }

 for (i = 0; i < ARRAY_SIZE(csc->post_clamp) ; i++) {
  mdp4_write(mdp4_kms, REG_MDP4_PIPE_CSC_PRE_LV(pipe, i),
    csc->pre_clamp[i]);

  mdp4_write(mdp4_kms, REG_MDP4_PIPE_CSC_POST_LV(pipe, i),
    csc->post_clamp[i]);
 }
}
