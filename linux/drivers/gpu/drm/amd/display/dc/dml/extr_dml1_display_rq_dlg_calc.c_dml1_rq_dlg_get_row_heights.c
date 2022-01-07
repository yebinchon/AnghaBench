
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int dpte_buffer_size_in_pte_reqs_luma; } ;
struct TYPE_3__ {unsigned int vmm_page_size_bytes; } ;
struct display_mode_lib {TYPE_2__ ip; TYPE_1__ soc; } ;
typedef enum source_macro_tile_size { ____Placeholder_source_macro_tile_size } source_macro_tile_size ;
typedef enum source_format_class { ____Placeholder_source_format_class } source_format_class ;


 int ASSERT (int) ;
 int dm_sw_linear ;
 int dm_vert ;
 unsigned int dml_ceil (double,int) ;
 unsigned int dml_floor (unsigned int,int) ;
 unsigned int dml_log2 (unsigned int) ;
 int get_blk256_size (unsigned int*,unsigned int*,unsigned int) ;
 int get_blk_size_bytes (int) ;
 unsigned int get_bytes_per_element (int,int) ;

__attribute__((used)) static void dml1_rq_dlg_get_row_heights(
  struct display_mode_lib *mode_lib,
  unsigned int *o_dpte_row_height,
  unsigned int *o_meta_row_height,
  unsigned int vp_width,
  unsigned int data_pitch,
  int source_format,
  int tiling,
  int macro_tile_size,
  int source_scan,
  int is_chroma)
{
 bool surf_linear = (tiling == dm_sw_linear);
 bool surf_vert = (source_scan == dm_vert);

 unsigned int bytes_per_element = get_bytes_per_element(
   (enum source_format_class) source_format,
   is_chroma);
 unsigned int log2_bytes_per_element = dml_log2(bytes_per_element);
 unsigned int blk256_width = 0;
 unsigned int blk256_height = 0;

 unsigned int log2_blk256_height;
 unsigned int blk_bytes;
 unsigned int log2_blk_bytes;
 unsigned int log2_blk_height;
 unsigned int log2_blk_width;
 unsigned int log2_meta_req_bytes;
 unsigned int log2_meta_req_height;
 unsigned int log2_meta_req_width;
 unsigned int log2_meta_row_height;
 unsigned int log2_vmpg_bytes;
 unsigned int dpte_buf_in_pte_reqs;
 unsigned int log2_vmpg_height;
 unsigned int log2_vmpg_width;
 unsigned int log2_dpte_req_height_ptes;
 unsigned int log2_dpte_req_width_ptes;
 unsigned int log2_dpte_req_height;
 unsigned int log2_dpte_req_width;
 unsigned int log2_dpte_row_height_linear;
 unsigned int log2_dpte_row_height;
 unsigned int dpte_req_width;

 if (surf_linear) {
  blk256_width = 256;
  blk256_height = 1;
 } else {
  get_blk256_size(&blk256_width, &blk256_height, bytes_per_element);
 }

 log2_blk256_height = dml_log2((double) blk256_height);
 blk_bytes = surf_linear ?
   256 : get_blk_size_bytes((enum source_macro_tile_size) macro_tile_size);
 log2_blk_bytes = dml_log2((double) blk_bytes);
 log2_blk_height = 0;
 log2_blk_width = 0;







 if (tiling != dm_sw_linear)
  log2_blk_height = log2_blk256_height
    + dml_ceil((double) (log2_blk_bytes - 8) / 2.0, 1);
 else
  log2_blk_height = 0;

 log2_blk_width = log2_blk_bytes - log2_bytes_per_element - log2_blk_height;




 log2_meta_req_bytes = 6;




 log2_meta_req_height = log2_blk256_height + 3;
 log2_meta_req_width = log2_meta_req_bytes + 8 - log2_bytes_per_element
   - log2_meta_req_height;
 log2_meta_row_height = 0;




 if (!surf_vert)
  log2_meta_row_height = log2_meta_req_height;
 else
  log2_meta_row_height = log2_meta_req_width;

 *o_meta_row_height = 1 << log2_meta_row_height;




 log2_vmpg_bytes = dml_log2(mode_lib->soc.vmm_page_size_bytes);
 dpte_buf_in_pte_reqs = mode_lib->ip.dpte_buffer_size_in_pte_reqs_luma;

 log2_vmpg_height = 0;
 log2_vmpg_width = 0;
 log2_dpte_req_height_ptes = 0;
 log2_dpte_req_width_ptes = 0;
 log2_dpte_req_height = 0;
 log2_dpte_req_width = 0;
 log2_dpte_row_height_linear = 0;
 log2_dpte_row_height = 0;
 dpte_req_width = 0;

 if (surf_linear)
  log2_vmpg_height = 0;
 else
  log2_vmpg_height = (log2_vmpg_bytes - 8) / 2 + log2_blk256_height;
 log2_vmpg_width = log2_vmpg_bytes - log2_bytes_per_element - log2_vmpg_height;


 if (log2_blk_bytes <= log2_vmpg_bytes)
  log2_dpte_req_height_ptes = 0;
 else if (log2_blk_height - log2_vmpg_height >= 2)
  log2_dpte_req_height_ptes = 2;
 else
  log2_dpte_req_height_ptes = log2_blk_height - log2_vmpg_height;
 log2_dpte_req_width_ptes = 3 - log2_dpte_req_height_ptes;

 ASSERT((log2_dpte_req_width_ptes == 3 && log2_dpte_req_height_ptes == 0) ||
   (log2_dpte_req_width_ptes == 2 && log2_dpte_req_height_ptes == 1) ||
   (log2_dpte_req_width_ptes == 1 && log2_dpte_req_height_ptes == 2));




 log2_dpte_req_height = log2_vmpg_height + log2_dpte_req_height_ptes;
 log2_dpte_req_width = log2_vmpg_width + log2_dpte_req_width_ptes;
 dpte_req_width = 1 << log2_dpte_req_width;




 if (surf_linear) {
  log2_dpte_row_height_linear = dml_floor(
    dml_log2(dpte_buf_in_pte_reqs * dpte_req_width / data_pitch),
    1);

  ASSERT(log2_dpte_row_height_linear >= 3);

  if (log2_dpte_row_height_linear > 7)
   log2_dpte_row_height_linear = 7;

  log2_dpte_row_height = log2_dpte_row_height_linear;
 } else {

  if (!surf_vert)
   log2_dpte_row_height = log2_dpte_req_height;
  else
   log2_dpte_row_height =
     (log2_blk_width < log2_dpte_req_width) ?
       log2_blk_width : log2_dpte_req_width;
 }






 if (!surf_vert && vp_width > (2560 + 16) && bytes_per_element >= 4 && log2_vmpg_bytes == 12
   && log2_blk_bytes >= 16)
  log2_dpte_row_height = log2_dpte_row_height - 1;

 *o_dpte_row_height = 1 << log2_dpte_row_height;
}
