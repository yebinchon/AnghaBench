
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long stb0899_calc_derot_time(long srate)
{
 if (srate > 0)
  return (100000 / (srate / 1000));
 else
  return 0;
}
