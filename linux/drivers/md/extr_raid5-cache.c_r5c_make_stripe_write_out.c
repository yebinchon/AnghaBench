
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int state; struct r5conf* raid_conf; } ;
struct r5l_log {int dummy; } ;
struct r5conf {int preread_active_stripes; struct r5l_log* log; } ;


 int BUG_ON (int) ;
 int STRIPE_PREREAD_ACTIVE ;
 int STRIPE_R5C_CACHING ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int r5c_is_writeback (struct r5l_log*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void r5c_make_stripe_write_out(struct stripe_head *sh)
{
 struct r5conf *conf = sh->raid_conf;
 struct r5l_log *log = conf->log;

 BUG_ON(!r5c_is_writeback(log));

 WARN_ON(!test_bit(STRIPE_R5C_CACHING, &sh->state));
 clear_bit(STRIPE_R5C_CACHING, &sh->state);

 if (!test_and_set_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
  atomic_inc(&conf->preread_active_stripes);
}
