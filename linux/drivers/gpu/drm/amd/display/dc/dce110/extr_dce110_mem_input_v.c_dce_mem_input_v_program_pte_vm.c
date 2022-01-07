
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dc_tiling_info {int dummy; } dc_tiling_info ;
typedef int uint32_t ;
struct mem_input {int dummy; } ;
struct TYPE_2__ {int ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;


 int DVMM_MAX_PTE_REQ_OUTSTANDING ;
 int DVMM_MAX_PTE_REQ_OUTSTANDING_C ;
 int DVMM_MIN_PTE_BEFORE_FLIP ;
 int DVMM_MIN_PTE_BEFORE_FLIP_C ;
 int DVMM_PAGE_HEIGHT ;
 int DVMM_PAGE_HEIGHT_C ;
 int DVMM_PAGE_WIDTH ;
 int DVMM_PAGE_WIDTH_C ;
 int DVMM_PTE_REQ_PER_CHUNK ;
 int DVMM_PTE_REQ_PER_CHUNK_C ;


 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;
 int UNP_DVMM_PTE_ARB_CONTROL ;
 int UNP_DVMM_PTE_ARB_CONTROL_C ;
 int UNP_DVMM_PTE_CONTROL ;
 int UNP_DVMM_PTE_CONTROL_C ;
 int UNP_PIPE_OUTSTANDING_REQUEST_LIMIT ;
 int UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_C ;
 int UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_L ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 unsigned int* get_dvmm_hw_setting (union dc_tiling_info*,int,int) ;
 int mmUNP_DVMM_PTE_ARB_CONTROL ;
 int mmUNP_DVMM_PTE_ARB_CONTROL_C ;
 int mmUNP_DVMM_PTE_CONTROL ;
 int mmUNP_DVMM_PTE_CONTROL_C ;
 int mmUNP_PIPE_OUTSTANDING_REQUEST_LIMIT ;
 int set_reg_field_value (int ,unsigned int const,int ,int ) ;

void dce_mem_input_v_program_pte_vm(
  struct mem_input *mem_input,
  enum surface_pixel_format format,
  union dc_tiling_info *tiling_info,
  enum dc_rotation_angle rotation)
{
 struct dce_mem_input *mem_input110 = TO_DCE_MEM_INPUT(mem_input);
 const unsigned int *pte = get_dvmm_hw_setting(tiling_info, format, 0);
 const unsigned int *pte_chroma = get_dvmm_hw_setting(tiling_info, format, 1);

 unsigned int page_width = 0;
 unsigned int page_height = 0;
 unsigned int page_width_chroma = 0;
 unsigned int page_height_chroma = 0;
 unsigned int temp_page_width = pte[1];
 unsigned int temp_page_height = pte[2];
 unsigned int min_pte_before_flip = 0;
 unsigned int min_pte_before_flip_chroma = 0;
 uint32_t value = 0;

 while ((temp_page_width >>= 1) != 0)
  page_width++;
 while ((temp_page_height >>= 1) != 0)
  page_height++;

 temp_page_width = pte_chroma[1];
 temp_page_height = pte_chroma[2];
 while ((temp_page_width >>= 1) != 0)
  page_width_chroma++;
 while ((temp_page_height >>= 1) != 0)
  page_height_chroma++;

 switch (rotation) {
 case 128:
 case 129:
  min_pte_before_flip = pte[4];
  min_pte_before_flip_chroma = pte_chroma[4];
  break;
 default:
  min_pte_before_flip = pte[3];
  min_pte_before_flip_chroma = pte_chroma[3];
  break;
 }

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_PIPE_OUTSTANDING_REQUEST_LIMIT);

 set_reg_field_value(value, 0xff, UNP_PIPE_OUTSTANDING_REQUEST_LIMIT, UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_L);
 set_reg_field_value(value, 0xff, UNP_PIPE_OUTSTANDING_REQUEST_LIMIT, UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_C);
 dm_write_reg(mem_input110->base.ctx, mmUNP_PIPE_OUTSTANDING_REQUEST_LIMIT, value);

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_CONTROL);
 set_reg_field_value(value, page_width, UNP_DVMM_PTE_CONTROL, DVMM_PAGE_WIDTH);
 set_reg_field_value(value, page_height, UNP_DVMM_PTE_CONTROL, DVMM_PAGE_HEIGHT);
 set_reg_field_value(value, min_pte_before_flip, UNP_DVMM_PTE_CONTROL, DVMM_MIN_PTE_BEFORE_FLIP);
 dm_write_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_CONTROL, value);

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_ARB_CONTROL);
 set_reg_field_value(value, pte[5], UNP_DVMM_PTE_ARB_CONTROL, DVMM_PTE_REQ_PER_CHUNK);
 set_reg_field_value(value, 0xff, UNP_DVMM_PTE_ARB_CONTROL, DVMM_MAX_PTE_REQ_OUTSTANDING);
 dm_write_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_ARB_CONTROL, value);

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_CONTROL_C);
 set_reg_field_value(value, page_width_chroma, UNP_DVMM_PTE_CONTROL_C, DVMM_PAGE_WIDTH_C);
 set_reg_field_value(value, page_height_chroma, UNP_DVMM_PTE_CONTROL_C, DVMM_PAGE_HEIGHT_C);
 set_reg_field_value(value, min_pte_before_flip_chroma, UNP_DVMM_PTE_CONTROL_C, DVMM_MIN_PTE_BEFORE_FLIP_C);
 dm_write_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_CONTROL_C, value);

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_ARB_CONTROL_C);
 set_reg_field_value(value, pte_chroma[5], UNP_DVMM_PTE_ARB_CONTROL_C, DVMM_PTE_REQ_PER_CHUNK_C);
 set_reg_field_value(value, 0xff, UNP_DVMM_PTE_ARB_CONTROL_C, DVMM_MAX_PTE_REQ_OUTSTANDING_C);
 dm_write_reg(mem_input110->base.ctx, mmUNP_DVMM_PTE_ARB_CONTROL_C, value);
}
