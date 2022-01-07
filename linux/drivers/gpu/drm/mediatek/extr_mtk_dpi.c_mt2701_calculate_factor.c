
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int mt2701_calculate_factor(int clock)
{
 if (clock <= 64000)
  return 4;
 else if (clock <= 128000)
  return 2;
 else
  return 1;
}
