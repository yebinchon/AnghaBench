
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 long clamp_val (long,int ,int) ;

__attribute__((used)) static u8 LM93_PROCHOT_TO_REG(long prochot)
{
 prochot = clamp_val(prochot, 0, 255);
 return (u8)prochot;
}
