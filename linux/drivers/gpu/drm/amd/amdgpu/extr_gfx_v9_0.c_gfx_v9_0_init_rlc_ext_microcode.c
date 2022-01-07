
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rlc_firmware_header_v2_1 {int reg_list_format_direct_reg_list_length; int save_restore_list_srm_offset_bytes; int save_restore_list_srm_size_bytes; int save_restore_list_srm_feature_ver; int save_restore_list_srm_ucode_ver; int save_restore_list_gpm_offset_bytes; int save_restore_list_gpm_size_bytes; int save_restore_list_gpm_feature_ver; int save_restore_list_gpm_ucode_ver; int save_restore_list_cntl_offset_bytes; int save_restore_list_cntl_size_bytes; int save_restore_list_cntl_feature_ver; int save_restore_list_cntl_ucode_ver; } ;
struct TYPE_5__ {int save_restore_list_cntl_size_bytes; int save_restore_list_gpm_size_bytes; int save_restore_list_srm_size_bytes; int reg_list_format_direct_reg_list_length; int * save_restore_list_srm; int * save_restore_list_gpm; int * save_restore_list_cntl; } ;
struct TYPE_6__ {int rlc_srlc_fw_version; int rlc_srlc_feature_version; int rlc_srlg_fw_version; int rlc_srlg_feature_version; int rlc_srls_fw_version; int rlc_srls_feature_version; TYPE_2__ rlc; TYPE_1__* rlc_fw; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static void gfx_v9_0_init_rlc_ext_microcode(struct amdgpu_device *adev)
{
 const struct rlc_firmware_header_v2_1 *rlc_hdr;

 rlc_hdr = (const struct rlc_firmware_header_v2_1 *)adev->gfx.rlc_fw->data;
 adev->gfx.rlc_srlc_fw_version = le32_to_cpu(rlc_hdr->save_restore_list_cntl_ucode_ver);
 adev->gfx.rlc_srlc_feature_version = le32_to_cpu(rlc_hdr->save_restore_list_cntl_feature_ver);
 adev->gfx.rlc.save_restore_list_cntl_size_bytes = le32_to_cpu(rlc_hdr->save_restore_list_cntl_size_bytes);
 adev->gfx.rlc.save_restore_list_cntl = (u8 *)rlc_hdr + le32_to_cpu(rlc_hdr->save_restore_list_cntl_offset_bytes);
 adev->gfx.rlc_srlg_fw_version = le32_to_cpu(rlc_hdr->save_restore_list_gpm_ucode_ver);
 adev->gfx.rlc_srlg_feature_version = le32_to_cpu(rlc_hdr->save_restore_list_gpm_feature_ver);
 adev->gfx.rlc.save_restore_list_gpm_size_bytes = le32_to_cpu(rlc_hdr->save_restore_list_gpm_size_bytes);
 adev->gfx.rlc.save_restore_list_gpm = (u8 *)rlc_hdr + le32_to_cpu(rlc_hdr->save_restore_list_gpm_offset_bytes);
 adev->gfx.rlc_srls_fw_version = le32_to_cpu(rlc_hdr->save_restore_list_srm_ucode_ver);
 adev->gfx.rlc_srls_feature_version = le32_to_cpu(rlc_hdr->save_restore_list_srm_feature_ver);
 adev->gfx.rlc.save_restore_list_srm_size_bytes = le32_to_cpu(rlc_hdr->save_restore_list_srm_size_bytes);
 adev->gfx.rlc.save_restore_list_srm = (u8 *)rlc_hdr + le32_to_cpu(rlc_hdr->save_restore_list_srm_offset_bytes);
 adev->gfx.rlc.reg_list_format_direct_reg_list_length =
   le32_to_cpu(rlc_hdr->reg_list_format_direct_reg_list_length);
}
