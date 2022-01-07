
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head_state {scalar_t__ failed; scalar_t__ injournal; } ;
struct stripe_head {int state; int reconstruct_state; int check_state; } ;


 int STRIPE_COMPUTE_RUN ;
 int STRIPE_HANDLE ;
 int STRIPE_R5C_CACHING ;
 scalar_t__ fetch_block (struct stripe_head*,struct stripe_head_state*,int,int) ;
 int r5c_make_stripe_write_out (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_stripe_fill(struct stripe_head *sh,
          struct stripe_head_state *s,
          int disks)
{
 int i;





 if (!test_bit(STRIPE_COMPUTE_RUN, &sh->state) && !sh->check_state &&
     !sh->reconstruct_state) {
  if (s->injournal && s->failed) {
   if (test_bit(STRIPE_R5C_CACHING, &sh->state))
    r5c_make_stripe_write_out(sh);
   goto out;
  }

  for (i = disks; i--; )
   if (fetch_block(sh, s, i, disks))
    break;
 }
out:
 set_bit(STRIPE_HANDLE, &sh->state);
}
