
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long modulo(unsigned long a, unsigned long b)
{
 if (a >= b)
  return a - b;
 else
  return a;
}
