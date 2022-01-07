
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {struct r5conf* raid_conf; } ;
struct r5conf {scalar_t__ log; } ;


 int ppl_stripe_write_finished (struct stripe_head*) ;
 int r5l_stripe_write_finished (struct stripe_head*) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;

__attribute__((used)) static inline void log_stripe_write_finished(struct stripe_head *sh)
{
 struct r5conf *conf = sh->raid_conf;

 if (conf->log)
  r5l_stripe_write_finished(sh);
 else if (raid5_has_ppl(conf))
  ppl_stripe_write_finished(sh);
}
