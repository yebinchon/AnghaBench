
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int LM75_TEMP_MAX ;
 int LM75_TEMP_MIN ;
 int clamp_val (long,int ,int ) ;

__attribute__((used)) static inline u16 LM75_TEMP_TO_REG(long temp)
{
 int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
 ntemp += (ntemp < 0 ? -250 : 250);
 return (u16)((ntemp / 500) << 7);
}
