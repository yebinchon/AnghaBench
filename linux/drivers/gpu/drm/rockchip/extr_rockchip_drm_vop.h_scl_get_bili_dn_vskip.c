
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int GET_SCL_FT_BILI_DN (int,int) ;

__attribute__((used)) static inline uint16_t scl_get_bili_dn_vskip(int src_h, int dst_h,
          int vskiplines)
{
 int act_height;

 act_height = (src_h + vskiplines - 1) / vskiplines;

 if (act_height == dst_h)
  return GET_SCL_FT_BILI_DN(src_h, dst_h) / vskiplines;

 return GET_SCL_FT_BILI_DN(act_height, dst_h);
}
