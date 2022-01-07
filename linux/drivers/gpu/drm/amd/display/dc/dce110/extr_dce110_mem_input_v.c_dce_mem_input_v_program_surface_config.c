
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


 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;
 int enable (struct dce_mem_input*) ;
 int program_pixel_format (struct dce_mem_input*,int) ;
 int program_size_and_rotation (struct dce_mem_input*,int,struct plane_size*) ;
 int program_tiling (struct dce_mem_input*,union dc_tiling_info*,int) ;

void dce_mem_input_v_program_surface_config(
 struct mem_input *mem_input,
 enum surface_pixel_format format,
 union dc_tiling_info *tiling_info,
 struct plane_size *plane_size,
 enum dc_rotation_angle rotation,
 struct dc_plane_dcc_param *dcc,
 bool horizotal_mirror)
{
 struct dce_mem_input *mem_input110 = TO_DCE_MEM_INPUT(mem_input);

 enable(mem_input110);
 program_tiling(mem_input110, tiling_info, format);
 program_size_and_rotation(mem_input110, rotation, plane_size);
 program_pixel_format(mem_input110, format);
}
