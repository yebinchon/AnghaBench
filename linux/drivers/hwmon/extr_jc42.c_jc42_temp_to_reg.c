
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int JC42_TEMP_MAX ;
 int JC42_TEMP_MIN ;
 int JC42_TEMP_MIN_EXTENDED ;
 int clamp_val (long,int ,int ) ;

__attribute__((used)) static u16 jc42_temp_to_reg(long temp, bool extended)
{
 int ntemp = clamp_val(temp,
         extended ? JC42_TEMP_MIN_EXTENDED :
         JC42_TEMP_MIN, JC42_TEMP_MAX);


 return (ntemp * 2 / 125) & 0x1fff;
}
