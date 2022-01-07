
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_pingpong {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int PP_INT_COUNT_VAL ;
 int PP_SYNC_CONFIG_HEIGHT ;
 int PP_VSYNC_INIT_VAL ;

__attribute__((used)) static u32 dpu_hw_pp_get_line_count(struct dpu_hw_pingpong *pp)
{
 struct dpu_hw_blk_reg_map *c = &pp->hw;
 u32 height, init;
 u32 line = 0xFFFF;

 if (!pp)
  return 0;
 c = &pp->hw;

 init = DPU_REG_READ(c, PP_VSYNC_INIT_VAL) & 0xFFFF;
 height = DPU_REG_READ(c, PP_SYNC_CONFIG_HEIGHT) & 0xFFFF;

 if (height < init)
  return line;

 line = DPU_REG_READ(c, PP_INT_COUNT_VAL) & 0xFFFF;

 if (line < init)
  line += (0xFFFF - init);
 else
  line -= init;

 return line;
}
