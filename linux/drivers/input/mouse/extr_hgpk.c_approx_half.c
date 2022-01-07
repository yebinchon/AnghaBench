
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int approx_half(int curr, int prev)
{
 int belowhalf, abovehalf;

 if (curr < 5 || prev < 5)
  return 0;

 belowhalf = (prev * 8) / 20;
 abovehalf = (prev * 12) / 20;

 return belowhalf < curr && curr <= abovehalf;
}
