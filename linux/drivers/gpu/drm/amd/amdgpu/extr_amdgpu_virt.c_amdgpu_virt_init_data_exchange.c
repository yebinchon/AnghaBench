
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int checksum_key; struct amd_sriov_msg_pf2vf_info_header* p_vf2pf; struct amd_sriov_msg_pf2vf_info_header* p_pf2vf; } ;
struct TYPE_8__ {int gim_feature; TYPE_2__ fw_reserve; } ;
struct TYPE_6__ {int * va; } ;
struct amdgpu_device {TYPE_3__ virt; TYPE_1__ fw_vram_usage; } ;
struct amd_sriov_msg_pf2vf_info_header {int dummy; } ;
typedef int amdgim_vf2pf_info ;
struct TYPE_10__ {char* version; } ;
struct TYPE_9__ {int size; int version; } ;


 int AMDGIM_DATAEXCHANGE_OFFSET ;
 int AMDGPU_FW_VRAM_PF2VF_READ (struct amdgpu_device*,int,int*) ;
 int AMDGPU_FW_VRAM_VF2PF_READ (struct amdgpu_device*,int ,char**) ;
 int AMDGPU_FW_VRAM_VF2PF_VER ;
 int AMDGPU_FW_VRAM_VF2PF_WRITE (struct amdgpu_device*,int,int) ;
 TYPE_5__* THIS_MODULE ;
 int amdgpu_virt_fw_reserve_get_checksum (struct amd_sriov_msg_pf2vf_info_header*,int,int ,int) ;
 int driver_cert ;
 int driver_version ;
 int feature_flags ;
 TYPE_4__ header ;
 int memset (void*,int ,int) ;
 int strcpy (char*,char*) ;

void amdgpu_virt_init_data_exchange(struct amdgpu_device *adev)
{
 uint32_t pf2vf_size = 0;
 uint32_t checksum = 0;
 uint32_t checkval;
 char *str;

 adev->virt.fw_reserve.p_pf2vf = ((void*)0);
 adev->virt.fw_reserve.p_vf2pf = ((void*)0);

 if (adev->fw_vram_usage.va != ((void*)0)) {
  adev->virt.fw_reserve.p_pf2vf =
   (struct amd_sriov_msg_pf2vf_info_header *)(
   adev->fw_vram_usage.va + AMDGIM_DATAEXCHANGE_OFFSET);
  AMDGPU_FW_VRAM_PF2VF_READ(adev, header.size, &pf2vf_size);
  AMDGPU_FW_VRAM_PF2VF_READ(adev, checksum, &checksum);
  AMDGPU_FW_VRAM_PF2VF_READ(adev, feature_flags, &adev->virt.gim_feature);


  if (pf2vf_size > 0 && pf2vf_size < 4096) {
   checkval = amdgpu_virt_fw_reserve_get_checksum(
    adev->virt.fw_reserve.p_pf2vf, pf2vf_size,
    adev->virt.fw_reserve.checksum_key, checksum);
   if (checkval == checksum) {
    adev->virt.fw_reserve.p_vf2pf =
     ((void *)adev->virt.fw_reserve.p_pf2vf +
     pf2vf_size);
    memset((void *)adev->virt.fw_reserve.p_vf2pf, 0,
     sizeof(amdgim_vf2pf_info));
    AMDGPU_FW_VRAM_VF2PF_WRITE(adev, header.version,
     AMDGPU_FW_VRAM_VF2PF_VER);
    AMDGPU_FW_VRAM_VF2PF_WRITE(adev, header.size,
     sizeof(amdgim_vf2pf_info));
    AMDGPU_FW_VRAM_VF2PF_READ(adev, driver_version,
     &str);





     strcpy(str, "N/A");
    AMDGPU_FW_VRAM_VF2PF_WRITE(adev, driver_cert,
     0);
    AMDGPU_FW_VRAM_VF2PF_WRITE(adev, checksum,
     amdgpu_virt_fw_reserve_get_checksum(
     adev->virt.fw_reserve.p_vf2pf,
     pf2vf_size,
     adev->virt.fw_reserve.checksum_key, 0));
   }
  }
 }
}
