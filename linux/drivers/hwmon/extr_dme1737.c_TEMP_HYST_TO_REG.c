
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long DIV_ROUND_CLOSEST (int,int) ;
 long clamp_val (long,int,int) ;

__attribute__((used)) static inline int TEMP_HYST_TO_REG(int temp, long hyst, int ix, int reg)
{
 hyst = clamp_val(hyst, temp - 15000, temp);
 hyst = DIV_ROUND_CLOSEST(temp - hyst, 1000);

 return (ix == 1) ? (reg & 0xf0) | hyst : (reg & 0x0f) | (hyst << 4);
}
