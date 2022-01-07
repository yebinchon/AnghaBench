
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mdp5_smp_state {int released; int state; void** client_state; } ;
struct mdp5_smp {int blk_cnt; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int bitmap_andnot (int ,int ,void*,int) ;
 int bitmap_zero (void*,int) ;
 size_t pipe2client (int,int) ;
 int pipe2nclients (int) ;

void mdp5_smp_release(struct mdp5_smp *smp, struct mdp5_smp_state *state,
  enum mdp5_pipe pipe)
{
 int i;
 int cnt = smp->blk_cnt;

 for (i = 0; i < pipe2nclients(pipe); i++) {
  u32 cid = pipe2client(pipe, i);
  void *cs = state->client_state[cid];


  bitmap_andnot(state->state, state->state, cs, cnt);


  bitmap_zero(cs, cnt);
 }

 state->released |= (1 << pipe);
}
