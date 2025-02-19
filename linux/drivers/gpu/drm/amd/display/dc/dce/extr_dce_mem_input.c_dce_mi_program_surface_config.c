
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dc_tiling_info {int dummy; } dc_tiling_info ;
struct plane_size {int dummy; } ;
struct mem_input {int dummy; } ;
struct dce_mem_input {int dummy; } ;
struct dc_plane_dcc_param {int dummy; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;


 int GRPH_ENABLE ;
 int REG_UPDATE (int ,int ,int) ;
 int SURFACE_PIXEL_FORMAT_GRPH_BEGIN ;
 int SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;
 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;
 int program_grph_pixel_format (struct dce_mem_input*,int) ;
 int program_size_and_rotation (struct dce_mem_input*,int,struct plane_size*) ;
 int program_tiling (struct dce_mem_input*,union dc_tiling_info*) ;

__attribute__((used)) static void dce_mi_program_surface_config(
 struct mem_input *mi,
 enum surface_pixel_format format,
 union dc_tiling_info *tiling_info,
 struct plane_size *plane_size,
 enum dc_rotation_angle rotation,
 struct dc_plane_dcc_param *dcc,
 bool horizontal_mirror)
{
 struct dce_mem_input *dce_mi = TO_DCE_MEM_INPUT(mi);
 REG_UPDATE(GRPH_ENABLE, GRPH_ENABLE, 1);

 program_tiling(dce_mi, tiling_info);
 program_size_and_rotation(dce_mi, rotation, plane_size);

 if (format >= SURFACE_PIXEL_FORMAT_GRPH_BEGIN &&
  format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
  program_grph_pixel_format(dce_mi, format);
}
