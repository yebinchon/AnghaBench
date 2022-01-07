
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnd_state {int dummy; } ;



__attribute__((used)) static unsigned int shrink(unsigned long n,
      unsigned long count,
      struct rnd_state *rnd)
{
 return count - n;
}
