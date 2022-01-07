
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



void i40iw_get_wqe_shift(u32 sge, u32 inline_data, u8 *shift)
{
 *shift = 0;
 if (sge > 1 || inline_data > 16)
  *shift = (sge < 4 && inline_data <= 48) ? 1 : 2;
}
