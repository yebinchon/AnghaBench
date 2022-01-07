
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gc_info_v1_0 {int gc_num_packer_per_sc; int gc_num_sa_per_se; int gc_num_sc_per_se; int gc_lds_size; int gc_max_scratch_slots_per_cu; int gc_max_waves_per_simd; int gc_wave_size; int gc_double_offchip_lds_buffer; int gc_gsprim_buff_depth; int gc_gs_table_depth; int gc_num_max_gs_thds; int gc_num_gprs; int gc_num_gl2c; int gc_num_rb_per_se; int gc_num_wgp1_per_sa; int gc_num_wgp0_per_sa; int gc_num_se; } ;
struct binary_header {TYPE_1__* table_list; } ;
struct TYPE_7__ {int max_shader_engines; int max_cu_per_sh; int max_sh_per_se; int max_backends_per_se; int max_texture_channel_caches; int max_gprs; int max_gs_threads; int gs_vgt_table_depth; int gs_prim_buffer_depth; int double_offchip_lds_buf; int num_sc_per_sh; int num_packer_per_sc; } ;
struct TYPE_6__ {int wave_front_size; int max_waves_per_simd; int max_scratch_slots_per_cu; int lds_size; } ;
struct TYPE_8__ {TYPE_3__ config; TYPE_2__ cu_info; } ;
struct amdgpu_device {TYPE_4__ gfx; scalar_t__ discovery; } ;
struct TYPE_5__ {int offset; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 size_t GC ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

int amdgpu_discovery_get_gfx_info(struct amdgpu_device *adev)
{
 struct binary_header *bhdr;
 struct gc_info_v1_0 *gc_info;

 if (!adev->discovery) {
  DRM_ERROR("ip discovery uninitialized\n");
  return -EINVAL;
 }

 bhdr = (struct binary_header *)adev->discovery;
 gc_info = (struct gc_info_v1_0 *)(adev->discovery +
   le16_to_cpu(bhdr->table_list[GC].offset));

 adev->gfx.config.max_shader_engines = le32_to_cpu(gc_info->gc_num_se);
 adev->gfx.config.max_cu_per_sh = 2 * (le32_to_cpu(gc_info->gc_num_wgp0_per_sa) +
           le32_to_cpu(gc_info->gc_num_wgp1_per_sa));
 adev->gfx.config.max_sh_per_se = le32_to_cpu(gc_info->gc_num_sa_per_se);
 adev->gfx.config.max_backends_per_se = le32_to_cpu(gc_info->gc_num_rb_per_se);
 adev->gfx.config.max_texture_channel_caches = le32_to_cpu(gc_info->gc_num_gl2c);
 adev->gfx.config.max_gprs = le32_to_cpu(gc_info->gc_num_gprs);
 adev->gfx.config.max_gs_threads = le32_to_cpu(gc_info->gc_num_max_gs_thds);
 adev->gfx.config.gs_vgt_table_depth = le32_to_cpu(gc_info->gc_gs_table_depth);
 adev->gfx.config.gs_prim_buffer_depth = le32_to_cpu(gc_info->gc_gsprim_buff_depth);
 adev->gfx.config.double_offchip_lds_buf = le32_to_cpu(gc_info->gc_double_offchip_lds_buffer);
 adev->gfx.cu_info.wave_front_size = le32_to_cpu(gc_info->gc_wave_size);
 adev->gfx.cu_info.max_waves_per_simd = le32_to_cpu(gc_info->gc_max_waves_per_simd);
 adev->gfx.cu_info.max_scratch_slots_per_cu = le32_to_cpu(gc_info->gc_max_scratch_slots_per_cu);
 adev->gfx.cu_info.lds_size = le32_to_cpu(gc_info->gc_lds_size);
 adev->gfx.config.num_sc_per_sh = le32_to_cpu(gc_info->gc_num_sc_per_se) /
      le32_to_cpu(gc_info->gc_num_sa_per_se);
 adev->gfx.config.num_packer_per_sc = le32_to_cpu(gc_info->gc_num_packer_per_sc);

 return 0;
}
