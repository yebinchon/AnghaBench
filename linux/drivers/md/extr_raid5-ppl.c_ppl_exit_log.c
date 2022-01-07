
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {struct ppl_conf* log_private; } ;
struct ppl_conf {int dummy; } ;


 int __ppl_exit_log (struct ppl_conf*) ;

void ppl_exit_log(struct r5conf *conf)
{
 struct ppl_conf *ppl_conf = conf->log_private;

 if (ppl_conf) {
  __ppl_exit_log(ppl_conf);
  conf->log_private = ((void*)0);
 }
}
