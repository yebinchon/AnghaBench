
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swizzle; int max_compressed_frags; int pipe_interleave; int num_pipes; } ;
union dc_tiling_info {TYPE_1__ gfx9; } ;
struct dcn20_hubp {int dummy; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;


 int DCSURF_ADDR_CONFIG ;
 int DCSURF_TILING_CONFIG ;
 int MAX_COMPRESSED_FRAGS ;
 int META_LINEAR ;
 int NUM_PIPES ;
 int PIPE_ALIGNED ;
 int PIPE_INTERLEAVE ;
 int RB_ALIGNED ;
 int REG_UPDATE_3 (int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SW_MODE ;
 int log_2 (int ) ;

__attribute__((used)) static void hubp2_program_tiling(
 struct dcn20_hubp *hubp2,
 const union dc_tiling_info *info,
 const enum surface_pixel_format pixel_format)
{
 REG_UPDATE_3(DCSURF_ADDR_CONFIG,
   NUM_PIPES, log_2(info->gfx9.num_pipes),
   PIPE_INTERLEAVE, info->gfx9.pipe_interleave,
   MAX_COMPRESSED_FRAGS, log_2(info->gfx9.max_compressed_frags));

 REG_UPDATE_4(DCSURF_TILING_CONFIG,
   SW_MODE, info->gfx9.swizzle,
   META_LINEAR, 0,
   RB_ALIGNED, 0,
   PIPE_ALIGNED, 0);
}
