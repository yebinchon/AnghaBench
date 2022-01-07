
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int DELTA (unsigned int,unsigned int) ;
 scalar_t__ use_ktime ;

__attribute__((used)) static inline unsigned int delta(u64 x, u64 y)
{
 if (use_ktime)
  return y - x;
 else
  return DELTA((unsigned int)x, (unsigned int)y);
}
