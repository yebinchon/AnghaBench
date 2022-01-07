
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;



__attribute__((used)) static s32 abssub(s32 a, s32 b)
{
 if (a > b)
  return a - b;
 else
  return b - a;
}
