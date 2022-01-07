
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ log; } ;


 int ppl_exit_log (struct r5conf*) ;
 int r5l_exit_log (struct r5conf*) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;

__attribute__((used)) static inline void log_exit(struct r5conf *conf)
{
 if (conf->log)
  r5l_exit_log(conf);
 else if (raid5_has_ppl(conf))
  ppl_exit_log(conf);
}
