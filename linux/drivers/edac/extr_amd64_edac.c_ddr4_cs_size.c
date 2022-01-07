
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ddr4_cs_size(unsigned i)
{
 int cs_size = 0;

 if (i == 0)
  cs_size = -1;
 else if (i == 1)
  cs_size = 1024;
 else

  cs_size = 1024 * (1 << (i >> 1));

 return cs_size;
}
