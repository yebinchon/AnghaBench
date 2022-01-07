
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int array_mode; int pipe_config; int tile_mode; int tile_split; int tile_aspect; int bank_height; int bank_width; int num_banks; } ;
struct TYPE_4__ {int shaderEnable; int num_pipes; int num_shader_engines; int num_banks; int swizzle; } ;
union dc_tiling_info {TYPE_3__ gfx8; TYPE_1__ gfx9; } ;
struct dce_mem_input {TYPE_2__* masks; } ;
struct TYPE_5__ {scalar_t__ GRPH_ARRAY_MODE; scalar_t__ GRPH_SW_MODE; } ;


 int GRPH_ARRAY_MODE ;
 int GRPH_BANK_HEIGHT ;
 int GRPH_BANK_WIDTH ;
 int GRPH_COLOR_EXPANSION_MODE ;
 int GRPH_CONTROL ;
 int GRPH_MACRO_TILE_ASPECT ;
 int GRPH_MICRO_TILE_MODE ;
 int GRPH_NUM_BANKS ;
 int GRPH_NUM_PIPES ;
 int GRPH_NUM_SHADER_ENGINES ;
 int GRPH_PIPE_CONFIG ;
 int GRPH_SE_ENABLE ;
 int GRPH_SW_MODE ;
 int GRPH_TILE_SPLIT ;
 int REG_UPDATE_6 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int REG_UPDATE_9 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int log_2 (int ) ;

__attribute__((used)) static void program_tiling(
 struct dce_mem_input *dce_mi, const union dc_tiling_info *info)
{
 if (dce_mi->masks->GRPH_SW_MODE) {
  REG_UPDATE_6(GRPH_CONTROL,
    GRPH_SW_MODE, info->gfx9.swizzle,
    GRPH_NUM_BANKS, log_2(info->gfx9.num_banks),
    GRPH_NUM_SHADER_ENGINES, log_2(info->gfx9.num_shader_engines),
    GRPH_NUM_PIPES, log_2(info->gfx9.num_pipes),
    GRPH_COLOR_EXPANSION_MODE, 1,
    GRPH_SE_ENABLE, info->gfx9.shaderEnable);




 }

 if (dce_mi->masks->GRPH_ARRAY_MODE) {
  REG_UPDATE_9(GRPH_CONTROL,
    GRPH_NUM_BANKS, info->gfx8.num_banks,
    GRPH_BANK_WIDTH, info->gfx8.bank_width,
    GRPH_BANK_HEIGHT, info->gfx8.bank_height,
    GRPH_MACRO_TILE_ASPECT, info->gfx8.tile_aspect,
    GRPH_TILE_SPLIT, info->gfx8.tile_split,
    GRPH_MICRO_TILE_MODE, info->gfx8.tile_mode,
    GRPH_PIPE_CONFIG, info->gfx8.pipe_config,
    GRPH_ARRAY_MODE, info->gfx8.array_mode,
    GRPH_COLOR_EXPANSION_MODE, 1);




 }
}
