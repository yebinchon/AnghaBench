
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dc_tiling_info {int dummy; } dc_tiling_info ;
struct pte_setting {unsigned int min_pte_before_flip_vert_scan; unsigned int min_pte_before_flip_horiz_scan; int pte_req_per_chunk; int page_height; int page_width; } ;
struct mem_input {int dummy; } ;
struct dce_mem_input {int dummy; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum mi_tiling_format { ____Placeholder_mi_tiling_format } mi_tiling_format ;
typedef enum mi_bits_per_pixel { ____Placeholder_mi_bits_per_pixel } mi_bits_per_pixel ;
typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;


 int DVMM_MAX_PTE_REQ_OUTSTANDING ;
 int DVMM_MIN_PTE_BEFORE_FLIP ;
 int DVMM_PAGE_HEIGHT ;
 int DVMM_PAGE_WIDTH ;
 int DVMM_PTE_ARB_CONTROL ;
 int DVMM_PTE_CONTROL ;
 int DVMM_PTE_REQ_PER_CHUNK ;
 int GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,unsigned int,int ,unsigned int,int ,unsigned int) ;
 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;
 int get_mi_bpp (int) ;
 int get_mi_tiling (union dc_tiling_info*) ;
 scalar_t__ is_vert_scan (int) ;
 unsigned int log_2 (int ) ;
 struct pte_setting** pte_settings ;

__attribute__((used)) static void dce_mi_program_pte_vm(
  struct mem_input *mi,
  enum surface_pixel_format format,
  union dc_tiling_info *tiling_info,
  enum dc_rotation_angle rotation)
{
 struct dce_mem_input *dce_mi = TO_DCE_MEM_INPUT(mi);
 enum mi_bits_per_pixel mi_bpp = get_mi_bpp(format);
 enum mi_tiling_format mi_tiling = get_mi_tiling(tiling_info);
 const struct pte_setting *pte = &pte_settings[mi_tiling][mi_bpp];

 unsigned int page_width = log_2(pte->page_width);
 unsigned int page_height = log_2(pte->page_height);
 unsigned int min_pte_before_flip = is_vert_scan(rotation) ?
   pte->min_pte_before_flip_vert_scan :
   pte->min_pte_before_flip_horiz_scan;

 REG_UPDATE(GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT,
   GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT, 0x7f);

 REG_UPDATE_3(DVMM_PTE_CONTROL,
   DVMM_PAGE_WIDTH, page_width,
   DVMM_PAGE_HEIGHT, page_height,
   DVMM_MIN_PTE_BEFORE_FLIP, min_pte_before_flip);

 REG_UPDATE_2(DVMM_PTE_ARB_CONTROL,
   DVMM_PTE_REQ_PER_CHUNK, pte->pte_req_per_chunk,
   DVMM_MAX_PTE_REQ_OUTSTANDING, 0x7f);
}
