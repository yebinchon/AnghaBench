
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;


 int DIV_ROUND_CLOSEST (int,int const) ;
 size_t clamp_val (int ,int ,int) ;

__attribute__((used)) static inline u8 in_to_reg(u32 val, u8 nr, const u16 *scale_in)
{
 return clamp_val(DIV_ROUND_CLOSEST(val * 100, scale_in[nr]), 0, 255);
}
