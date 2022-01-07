
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;

__attribute__((used)) static int veml6070_to_uv_index(unsigned val)
{





 unsigned uvi[11] = {
  187, 373, 560,
  746, 933, 1120,
  1308, 1494,
  1681, 1868, 2054};
 int i;

 for (i = 0; i < ARRAY_SIZE(uvi); i++)
  if (val <= uvi[i])
   return i;

 return 11;
}
