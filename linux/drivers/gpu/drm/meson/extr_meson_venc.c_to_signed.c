
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static signed int to_signed(unsigned int a)
{
 if (a <= 7)
  return a;
 else
  return a - 16;
}
