
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int si1145_scale_from_adcgain(int regval)
{
 return 128 >> regval;
}
