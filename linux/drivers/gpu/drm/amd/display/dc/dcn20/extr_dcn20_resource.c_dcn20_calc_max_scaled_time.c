
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mmhubbub_wbif_mode { ____Placeholder_mmhubbub_wbif_mode } mmhubbub_wbif_mode ;


 int PACKED_444 ;
 int PLANAR_420_10BPC ;
 int PLANAR_420_8BPC ;

unsigned int dcn20_calc_max_scaled_time(
  unsigned int time_per_pixel,
  enum mmhubbub_wbif_mode mode,
  unsigned int urgent_watermark)
{
 unsigned int time_per_byte = 0;
 unsigned int total_y_free_entry = 0x200;
 unsigned int total_c_free_entry = 0x140;
 unsigned int small_free_entry, max_free_entry;
 unsigned int buf_lh_capability;
 unsigned int max_scaled_time;

 if (mode == PACKED_444)
  time_per_byte = time_per_pixel/4;
 else if (mode == PLANAR_420_8BPC)
  time_per_byte = time_per_pixel;
 else if (mode == PLANAR_420_10BPC)
  time_per_byte = time_per_pixel * 819/1024;

 if (time_per_byte == 0)
  time_per_byte = 1;

 small_free_entry = (total_y_free_entry > total_c_free_entry) ? total_c_free_entry : total_y_free_entry;
 max_free_entry = (mode == PACKED_444) ? total_y_free_entry + total_c_free_entry : small_free_entry;
 buf_lh_capability = max_free_entry*time_per_byte*32/16;
 max_scaled_time = buf_lh_capability - urgent_watermark;
 return max_scaled_time;
}
