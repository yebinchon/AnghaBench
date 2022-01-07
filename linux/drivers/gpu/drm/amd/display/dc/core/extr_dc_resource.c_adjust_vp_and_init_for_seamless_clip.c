
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {int value; } ;


 struct fixed31_32 dc_fixpt_add (struct fixed31_32,int ) ;
 struct fixed31_32 dc_fixpt_add_int (struct fixed31_32,int) ;
 int dc_fixpt_floor (struct fixed31_32) ;
 int dc_fixpt_mul_int (struct fixed31_32,int) ;
 struct fixed31_32 dc_fixpt_sub (struct fixed31_32,struct fixed31_32) ;

__attribute__((used)) static inline void adjust_vp_and_init_for_seamless_clip(
  bool flip_scan_dir,
  int recout_skip,
  int src_size,
  int taps,
  struct fixed31_32 ratio,
  struct fixed31_32 *init,
  int *vp_offset,
  int *vp_size)
{
 if (!flip_scan_dir) {

  if ((*vp_offset + *vp_size) < src_size) {
   int vp_clip = src_size - *vp_size - *vp_offset;
   int int_part = dc_fixpt_floor(dc_fixpt_sub(*init, ratio));

   int_part = int_part > 0 ? int_part : 0;
   *vp_size += int_part < vp_clip ? int_part : vp_clip;
  }


  if (*vp_offset) {
   int int_part;

   *init = dc_fixpt_add(*init, dc_fixpt_mul_int(ratio, recout_skip));
   int_part = dc_fixpt_floor(*init) - *vp_offset;
   if (int_part < taps) {
    int int_adj = *vp_offset >= (taps - int_part) ?
       (taps - int_part) : *vp_offset;
    *vp_offset -= int_adj;
    *vp_size += int_adj;
    int_part += int_adj;
   } else if (int_part > taps) {
    *vp_offset += int_part - taps;
    *vp_size -= int_part - taps;
    int_part = taps;
   }
   init->value &= 0xffffffff;
   *init = dc_fixpt_add_int(*init, int_part);
  }
 } else {

  if (*vp_offset) {
   int int_part = dc_fixpt_floor(dc_fixpt_sub(*init, ratio));

   int_part = int_part > 0 ? int_part : 0;
   *vp_size += int_part < *vp_offset ? int_part : *vp_offset;
   *vp_offset -= int_part < *vp_offset ? int_part : *vp_offset;
  }


  if ((*vp_offset + *vp_size) < src_size) {
   int int_part;
   int end_offset = src_size - *vp_offset - *vp_size;





   *init = dc_fixpt_add(*init, dc_fixpt_mul_int(ratio, recout_skip));




   int_part = dc_fixpt_floor(*init) - end_offset;
   if (int_part < taps) {
    int int_adj = end_offset >= (taps - int_part) ?
       (taps - int_part) : end_offset;
    *vp_size += int_adj;
    int_part += int_adj;
   } else if (int_part > taps) {
    *vp_size += int_part - taps;
    int_part = taps;
   }
   init->value &= 0xffffffff;
   *init = dc_fixpt_add_int(*init, int_part);
  }
 }
}
