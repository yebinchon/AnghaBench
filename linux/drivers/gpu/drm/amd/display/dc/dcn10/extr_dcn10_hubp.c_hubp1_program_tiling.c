
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pipe_aligned; int rb_aligned; int meta_linear; int swizzle; int max_compressed_frags; int num_rb_per_se; int num_shader_engines; int pipe_interleave; int num_banks; int num_pipes; } ;
union dc_tiling_info {TYPE_1__ gfx9; } ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;


 int DCSURF_ADDR_CONFIG ;
 int DCSURF_TILING_CONFIG ;
 int MAX_COMPRESSED_FRAGS ;
 int META_LINEAR ;
 int NUM_BANKS ;
 int NUM_PIPES ;
 int NUM_RB_PER_SE ;
 int NUM_SE ;
 int PIPE_ALIGNED ;
 int PIPE_INTERLEAVE ;
 int RB_ALIGNED ;
 int REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE_6 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SW_MODE ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;
 int log_2 (int ) ;

void hubp1_program_tiling(
 struct hubp *hubp,
 const union dc_tiling_info *info,
 const enum surface_pixel_format pixel_format)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);

 REG_UPDATE_6(DCSURF_ADDR_CONFIG,
   NUM_PIPES, log_2(info->gfx9.num_pipes),
   NUM_BANKS, log_2(info->gfx9.num_banks),
   PIPE_INTERLEAVE, info->gfx9.pipe_interleave,
   NUM_SE, log_2(info->gfx9.num_shader_engines),
   NUM_RB_PER_SE, log_2(info->gfx9.num_rb_per_se),
   MAX_COMPRESSED_FRAGS, log_2(info->gfx9.max_compressed_frags));

 REG_UPDATE_4(DCSURF_TILING_CONFIG,
   SW_MODE, info->gfx9.swizzle,
   META_LINEAR, info->gfx9.meta_linear,
   RB_ALIGNED, info->gfx9.rb_aligned,
   PIPE_ALIGNED, info->gfx9.pipe_aligned);
}
