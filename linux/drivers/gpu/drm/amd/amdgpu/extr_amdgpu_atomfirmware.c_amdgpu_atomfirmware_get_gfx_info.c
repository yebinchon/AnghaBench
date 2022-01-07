
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int gc_lds_size; int gc_max_scratch_slots_per_cu; int gc_max_waves_per_simd; int gc_wave_size; int gc_double_offchip_lds_buffer; int gc_gsprim_buff_depth; int gc_gs_table_depth; int gc_num_max_gs_thds; int gc_num_gprs; int max_texture_channel_caches; int max_backends_per_se; int max_sh_per_se; int max_cu_per_sh; int max_shader_engines; } ;
union gfx_info {TYPE_4__ v24; } ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct amdgpu_mode_info {TYPE_5__* atom_context; } ;
struct TYPE_7__ {void* lds_size; int max_scratch_slots_per_cu; void* max_waves_per_simd; void* wave_front_size; } ;
struct TYPE_6__ {int double_offchip_lds_buf; void* gs_prim_buffer_depth; int gs_vgt_table_depth; int max_gs_threads; void* max_gprs; int max_texture_channel_caches; int max_backends_per_se; int max_sh_per_se; int max_cu_per_sh; int max_shader_engines; } ;
struct TYPE_8__ {TYPE_2__ cu_info; TYPE_1__ config; } ;
struct amdgpu_device {TYPE_3__ gfx; struct amdgpu_mode_info mode_info; } ;
struct TYPE_10__ {scalar_t__ bios; } ;


 int EINVAL ;
 scalar_t__ amdgpu_atom_parse_data_header (TYPE_5__*,int,int *,int*,int*,scalar_t__*) ;
 int atom_master_list_of_data_tables_v2_1 ;
 int get_index_into_master_table (int ,int ) ;
 int gfx_info ;
 void* le16_to_cpu (int ) ;

int amdgpu_atomfirmware_get_gfx_info(struct amdgpu_device *adev)
{
 struct amdgpu_mode_info *mode_info = &adev->mode_info;
 int index;
 uint8_t frev, crev;
 uint16_t data_offset;

 index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
         gfx_info);
 if (amdgpu_atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  union gfx_info *gfx_info = (union gfx_info *)
   (mode_info->atom_context->bios + data_offset);
  switch (crev) {
  case 4:
   adev->gfx.config.max_shader_engines = gfx_info->v24.max_shader_engines;
   adev->gfx.config.max_cu_per_sh = gfx_info->v24.max_cu_per_sh;
   adev->gfx.config.max_sh_per_se = gfx_info->v24.max_sh_per_se;
   adev->gfx.config.max_backends_per_se = gfx_info->v24.max_backends_per_se;
   adev->gfx.config.max_texture_channel_caches = gfx_info->v24.max_texture_channel_caches;
   adev->gfx.config.max_gprs = le16_to_cpu(gfx_info->v24.gc_num_gprs);
   adev->gfx.config.max_gs_threads = gfx_info->v24.gc_num_max_gs_thds;
   adev->gfx.config.gs_vgt_table_depth = gfx_info->v24.gc_gs_table_depth;
   adev->gfx.config.gs_prim_buffer_depth =
    le16_to_cpu(gfx_info->v24.gc_gsprim_buff_depth);
   adev->gfx.config.double_offchip_lds_buf =
    gfx_info->v24.gc_double_offchip_lds_buffer;
   adev->gfx.cu_info.wave_front_size = le16_to_cpu(gfx_info->v24.gc_wave_size);
   adev->gfx.cu_info.max_waves_per_simd = le16_to_cpu(gfx_info->v24.gc_max_waves_per_simd);
   adev->gfx.cu_info.max_scratch_slots_per_cu = gfx_info->v24.gc_max_scratch_slots_per_cu;
   adev->gfx.cu_info.lds_size = le16_to_cpu(gfx_info->v24.gc_lds_size);
   return 0;
  default:
   return -EINVAL;
  }

 }
 return -EINVAL;
}
