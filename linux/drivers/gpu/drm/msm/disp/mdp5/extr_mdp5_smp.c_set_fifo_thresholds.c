
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_smp {int blk_size; int* pipe_reqprio_fifo_wm0; int* pipe_reqprio_fifo_wm1; int* pipe_reqprio_fifo_wm2; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int BITS_PER_BYTE ;

__attribute__((used)) static void set_fifo_thresholds(struct mdp5_smp *smp,
  enum mdp5_pipe pipe, int nblks)
{
 u32 smp_entries_per_blk = smp->blk_size / (128 / BITS_PER_BYTE);
 u32 val;


 val = (nblks * smp_entries_per_blk) / 4;

 smp->pipe_reqprio_fifo_wm0[pipe] = val * 1;
 smp->pipe_reqprio_fifo_wm1[pipe] = val * 2;
 smp->pipe_reqprio_fifo_wm2[pipe] = val * 3;
}
