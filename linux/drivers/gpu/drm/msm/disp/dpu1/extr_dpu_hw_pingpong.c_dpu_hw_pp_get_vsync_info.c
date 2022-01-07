
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_pp_vsync_info {int rd_ptr_init_val; int rd_ptr_frame_count; int rd_ptr_line_count; int wr_ptr_line_count; } ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_pingpong {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int EINVAL ;
 int PP_INT_COUNT_VAL ;
 int PP_LINE_COUNT ;
 int PP_VSYNC_INIT_VAL ;

__attribute__((used)) static int dpu_hw_pp_get_vsync_info(struct dpu_hw_pingpong *pp,
  struct dpu_hw_pp_vsync_info *info)
{
 struct dpu_hw_blk_reg_map *c;
 u32 val;

 if (!pp || !info)
  return -EINVAL;
 c = &pp->hw;

 val = DPU_REG_READ(c, PP_VSYNC_INIT_VAL);
 info->rd_ptr_init_val = val & 0xffff;

 val = DPU_REG_READ(c, PP_INT_COUNT_VAL);
 info->rd_ptr_frame_count = (val & 0xffff0000) >> 16;
 info->rd_ptr_line_count = val & 0xffff;

 val = DPU_REG_READ(c, PP_LINE_COUNT);
 info->wr_ptr_line_count = val & 0xffff;

 return 0;
}
