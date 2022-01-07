
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int sign_extend32 (int,int) ;

__attribute__((used)) static int jc42_temp_from_reg(s16 reg)
{
 reg = sign_extend32(reg, 12);


 return reg * 125 / 2;
}
