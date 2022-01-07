
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int dummy; } ;
struct md_rdev {int dummy; } ;


 int ppl_init_log (struct r5conf*) ;
 int r5l_init_log (struct r5conf*,struct md_rdev*) ;

__attribute__((used)) static inline int log_init(struct r5conf *conf, struct md_rdev *journal_dev,
      bool ppl)
{
 if (journal_dev)
  return r5l_init_log(conf, journal_dev);
 else if (ppl)
  return ppl_init_log(conf);

 return 0;
}
