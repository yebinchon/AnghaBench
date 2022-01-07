
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ATC_BTSIZE_MAX ;
 int ATC_REG_TO_SRC_WIDTH (int) ;

__attribute__((used)) static inline int atc_calc_bytes_left(int current_len, u32 ctrla)
{
 u32 btsize = (ctrla & ATC_BTSIZE_MAX);
 u32 src_width = ATC_REG_TO_SRC_WIDTH(ctrla);







 return current_len - (btsize << src_width);
}
