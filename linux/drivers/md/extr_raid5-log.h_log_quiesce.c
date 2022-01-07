
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ log; } ;


 int ppl_quiesce (struct r5conf*,int) ;
 int r5l_quiesce (scalar_t__,int) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;

__attribute__((used)) static inline void log_quiesce(struct r5conf *conf, int quiesce)
{
 if (conf->log)
  r5l_quiesce(conf->log, quiesce);
 else if (raid5_has_ppl(conf))
  ppl_quiesce(conf, quiesce);
}
