
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline double dml_abs(double a)
{
 if (a > 0)
  return a;
 else
  return (a*(-1));
}
