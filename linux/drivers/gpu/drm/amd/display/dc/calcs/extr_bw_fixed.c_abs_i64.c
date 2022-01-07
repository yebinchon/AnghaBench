
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;



__attribute__((used)) static uint64_t abs_i64(int64_t arg)
{
 if (arg >= 0)
  return (uint64_t)(arg);
 else
  return (uint64_t)(-arg);
}
