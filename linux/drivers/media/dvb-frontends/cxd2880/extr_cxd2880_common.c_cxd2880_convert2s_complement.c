
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENMASK (int,int) ;

int cxd2880_convert2s_complement(u32 value, u32 bitlen)
{
 if (!bitlen || bitlen >= 32)
  return (int)value;

 if (value & (u32)(1 << (bitlen - 1)))
  return (int)(GENMASK(31, bitlen) | value);
 else
  return (int)(GENMASK(bitlen - 1, 0) & value);
}
