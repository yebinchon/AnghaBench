
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; } ;
struct mc_firmware_header_v1_0 {TYPE_3__ header; int io_debug_array_offset_bytes; int io_debug_size_bytes; } ;
struct TYPE_5__ {int fw_version; TYPE_1__* fw; } ;
struct amdgpu_device {int usec_timeout; TYPE_2__ gmc; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;


 int EINVAL ;
 int MC_SEQ_SUP_CNTL__RUN_MASK ;
 int MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D0_MASK ;
 int MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D1_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int amdgpu_ucode_print_mc_hdr (TYPE_3__*) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmMC_SEQ_IO_DEBUG_DATA ;
 int mmMC_SEQ_IO_DEBUG_INDEX ;
 int mmMC_SEQ_SUP_CNTL ;
 int mmMC_SEQ_SUP_PGM ;
 int mmMC_SEQ_TRAIN_WAKEUP_CNTL ;
 int udelay (int) ;

__attribute__((used)) static int gmc_v6_0_mc_load_microcode(struct amdgpu_device *adev)
{
 const __le32 *new_fw_data = ((void*)0);
 u32 running;
 const __le32 *new_io_mc_regs = ((void*)0);
 int i, regs_size, ucode_size;
 const struct mc_firmware_header_v1_0 *hdr;

 if (!adev->gmc.fw)
  return -EINVAL;

 hdr = (const struct mc_firmware_header_v1_0 *)adev->gmc.fw->data;

 amdgpu_ucode_print_mc_hdr(&hdr->header);

 adev->gmc.fw_version = le32_to_cpu(hdr->header.ucode_version);
 regs_size = le32_to_cpu(hdr->io_debug_size_bytes) / (4 * 2);
 new_io_mc_regs = (const __le32 *)
  (adev->gmc.fw->data + le32_to_cpu(hdr->io_debug_array_offset_bytes));
 ucode_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
 new_fw_data = (const __le32 *)
  (adev->gmc.fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));

 running = RREG32(mmMC_SEQ_SUP_CNTL) & MC_SEQ_SUP_CNTL__RUN_MASK;

 if (running == 0) {


  WREG32(mmMC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(mmMC_SEQ_SUP_CNTL, 0x00000010);


  for (i = 0; i < regs_size; i++) {
   WREG32(mmMC_SEQ_IO_DEBUG_INDEX, le32_to_cpup(new_io_mc_regs++));
   WREG32(mmMC_SEQ_IO_DEBUG_DATA, le32_to_cpup(new_io_mc_regs++));
  }

  for (i = 0; i < ucode_size; i++) {
   WREG32(mmMC_SEQ_SUP_PGM, le32_to_cpup(new_fw_data++));
  }


  WREG32(mmMC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(mmMC_SEQ_SUP_CNTL, 0x00000004);
  WREG32(mmMC_SEQ_SUP_CNTL, 0x00000001);


  for (i = 0; i < adev->usec_timeout; i++) {
   if (RREG32(mmMC_SEQ_TRAIN_WAKEUP_CNTL) & MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D0_MASK)
    break;
   udelay(1);
  }
  for (i = 0; i < adev->usec_timeout; i++) {
   if (RREG32(mmMC_SEQ_TRAIN_WAKEUP_CNTL) & MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D1_MASK)
    break;
   udelay(1);
  }

 }

 return 0;
}
