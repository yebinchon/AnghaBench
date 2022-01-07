
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u16 ;


 long DIV_ROUND_CLOSEST (size_t,int) ;

__attribute__((used)) static inline long in_from_reg(u8 reg, u8 nr, const u16 *scale_in)
{
 return DIV_ROUND_CLOSEST(reg * scale_in[nr], 100);
}
