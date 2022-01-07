
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef enum scale_mode { ____Placeholder_scale_mode } scale_mode ;


 int GET_SCL_FT_BIC (int ,int ) ;
 int GET_SCL_FT_BILI_DN (int ,int ) ;
 int GET_SCL_FT_BILI_UP (int ,int ) ;
 int SCALE_DOWN ;
 int SCALE_UP ;
 int SCALE_UP_BIL ;
 int SCL_FT_DEFAULT_FIXPOINT_SHIFT ;
 int scl_get_bili_dn_vskip (int ,int ,int) ;
 int scl_get_vskiplines (int ,int ) ;

__attribute__((used)) static uint16_t scl_vop_cal_scale(enum scale_mode mode, uint32_t src,
      uint32_t dst, bool is_horizontal,
      int vsu_mode, int *vskiplines)
{
 uint16_t val = 1 << SCL_FT_DEFAULT_FIXPOINT_SHIFT;

 if (vskiplines)
  *vskiplines = 0;

 if (is_horizontal) {
  if (mode == SCALE_UP)
   val = GET_SCL_FT_BIC(src, dst);
  else if (mode == SCALE_DOWN)
   val = GET_SCL_FT_BILI_DN(src, dst);
 } else {
  if (mode == SCALE_UP) {
   if (vsu_mode == SCALE_UP_BIL)
    val = GET_SCL_FT_BILI_UP(src, dst);
   else
    val = GET_SCL_FT_BIC(src, dst);
  } else if (mode == SCALE_DOWN) {
   if (vskiplines) {
    *vskiplines = scl_get_vskiplines(src, dst);
    val = scl_get_bili_dn_vskip(src, dst,
           *vskiplines);
   } else {
    val = GET_SCL_FT_BILI_DN(src, dst);
   }
  }
 }

 return val;
}
