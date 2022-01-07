
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int SCALE(long val, int mul, int div)
{
 if (val < 0)
  return (val * mul - div / 2) / div;
 else
  return (val * mul + div / 2) / div;
}
