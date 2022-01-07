
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_smp {int * pipe_reqprio_fifo_wm2; int * pipe_reqprio_fifo_wm1; int * pipe_reqprio_fifo_wm0; } ;
struct mdp5_kms {int num_hwpipes; struct mdp5_hw_pipe** hwpipes; } ;
struct mdp5_hw_pipe {int pipe; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int REG_MDP5_PIPE_REQPRIO_FIFO_WM_0 (int) ;
 int REG_MDP5_PIPE_REQPRIO_FIFO_WM_1 (int) ;
 int REG_MDP5_PIPE_REQPRIO_FIFO_WM_2 (int) ;
 struct mdp5_kms* get_kms (struct mdp5_smp*) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;

__attribute__((used)) static void write_smp_fifo_regs(struct mdp5_smp *smp)
{
 struct mdp5_kms *mdp5_kms = get_kms(smp);
 int i;

 for (i = 0; i < mdp5_kms->num_hwpipes; i++) {
  struct mdp5_hw_pipe *hwpipe = mdp5_kms->hwpipes[i];
  enum mdp5_pipe pipe = hwpipe->pipe;

  mdp5_write(mdp5_kms, REG_MDP5_PIPE_REQPRIO_FIFO_WM_0(pipe),
      smp->pipe_reqprio_fifo_wm0[pipe]);
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_REQPRIO_FIFO_WM_1(pipe),
      smp->pipe_reqprio_fifo_wm1[pipe]);
  mdp5_write(mdp5_kms, REG_MDP5_PIPE_REQPRIO_FIFO_WM_2(pipe),
      smp->pipe_reqprio_fifo_wm2[pipe]);
 }
}
