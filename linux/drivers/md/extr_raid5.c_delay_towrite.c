
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head_state {scalar_t__ injournal; scalar_t__ log_failed; } ;
struct r5dev {int flags; } ;
struct r5conf {int cache_state; } ;


 int R5C_LOG_CRITICAL ;
 int R5_Insync ;
 int R5_OVERWRITE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool delay_towrite(struct r5conf *conf,
     struct r5dev *dev,
     struct stripe_head_state *s)
{

 if (!test_bit(R5_OVERWRITE, &dev->flags) &&
     !test_bit(R5_Insync, &dev->flags) && s->injournal)
  return 1;

 if (test_bit(R5C_LOG_CRITICAL, &conf->cache_state) &&
     s->injournal > 0)
  return 1;

 if (s->log_failed && s->injournal)
  return 1;
 return 0;
}
