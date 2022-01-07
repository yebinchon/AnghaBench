
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long long abs_i64(
 long long arg)
{
 if (arg > 0)
  return (unsigned long long)arg;
 else
  return (unsigned long long)(-arg);
}
