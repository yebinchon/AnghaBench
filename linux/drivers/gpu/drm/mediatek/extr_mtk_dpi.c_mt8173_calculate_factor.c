
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int mt8173_calculate_factor(int clock)
{
 if (clock <= 27000)
  return 3 << 4;
 else if (clock <= 84000)
  return 3 << 3;
 else if (clock <= 167000)
  return 3 << 2;
 else
  return 3 << 1;
}
