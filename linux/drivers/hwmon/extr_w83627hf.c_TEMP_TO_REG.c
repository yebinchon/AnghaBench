
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TEMP_MAX ;
 int TEMP_MIN ;
 int clamp_val (long,int ,int ) ;

__attribute__((used)) static u8 TEMP_TO_REG(long temp)
{
 int ntemp = clamp_val(temp, TEMP_MIN, TEMP_MAX);
 ntemp += (ntemp < 0 ? -500 : 500);
 return (u8)(ntemp / 1000);
}
