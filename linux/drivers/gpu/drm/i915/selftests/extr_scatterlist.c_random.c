
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnd_state {int dummy; } ;


 int prandom_u32_state (struct rnd_state*) ;

__attribute__((used)) static unsigned int random(unsigned long n,
      unsigned long count,
      struct rnd_state *rnd)
{
 return 1 + (prandom_u32_state(rnd) % 1024);
}
