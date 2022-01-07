
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {size_t pd_idx; TYPE_1__* dev; int state; TYPE_2__* raid_conf; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; } ;
struct TYPE_4__ {struct r5l_log* log; } ;
struct TYPE_3__ {int flags; } ;


 int BUG_ON (scalar_t__) ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ;
 int R5_InJournal ;
 int STRIPE_R5C_CACHING ;
 int r5c_handle_data_cached (struct stripe_head*) ;
 int r5c_handle_parity_cached (struct stripe_head*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void r5c_finish_cache_stripe(struct stripe_head *sh)
{
 struct r5l_log *log = sh->raid_conf->log;

 if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH) {
  BUG_ON(test_bit(STRIPE_R5C_CACHING, &sh->state));






  set_bit(R5_InJournal, &sh->dev[sh->pd_idx].flags);
 } else if (test_bit(STRIPE_R5C_CACHING, &sh->state)) {
  r5c_handle_data_cached(sh);
 } else {
  r5c_handle_parity_cached(sh);
  set_bit(R5_InJournal, &sh->dev[sh->pd_idx].flags);
 }
}
