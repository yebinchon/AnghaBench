
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int family; int usec_timeout; scalar_t__ new_fw; TYPE_2__* pdev; TYPE_1__* mc_fw; } ;
struct TYPE_6__ {int ucode_array_offset_bytes; int ucode_size_bytes; } ;
struct mc_firmware_header_v1_0 {TYPE_3__ header; int io_debug_array_offset_bytes; int io_debug_size_bytes; } ;
typedef int __le32 ;
typedef int __be32 ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int size; scalar_t__ data; } ;


 int BONAIRE_IO_MC_REGS_SIZE ;


 int EINVAL ;
 int HAWAII_IO_MC_REGS_SIZE ;
 int MC_SEQ_IO_DEBUG_DATA ;
 int MC_SEQ_IO_DEBUG_INDEX ;
 int MC_SEQ_MISC0 ;
 int MC_SEQ_SUP_CNTL ;
 int MC_SEQ_SUP_PGM ;
 int MC_SEQ_TRAIN_WAKEUP_CNTL ;
 int RREG32 (int ) ;
 int RUN_MASK ;
 int TRAIN_DONE_D0 ;
 int TRAIN_DONE_D1 ;
 int WREG32 (int ,int) ;
 int be32_to_cpup (int ) ;
 int bonaire_io_mc_regs ;
 int hawaii_io_mc_regs ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int radeon_ucode_print_mc_hdr (TYPE_3__*) ;
 int udelay (int) ;

int ci_mc_load_microcode(struct radeon_device *rdev)
{
 const __be32 *fw_data = ((void*)0);
 const __le32 *new_fw_data = ((void*)0);
 u32 running, tmp;
 u32 *io_mc_regs = ((void*)0);
 const __le32 *new_io_mc_regs = ((void*)0);
 int i, regs_size, ucode_size;

 if (!rdev->mc_fw)
  return -EINVAL;

 if (rdev->new_fw) {
  const struct mc_firmware_header_v1_0 *hdr =
   (const struct mc_firmware_header_v1_0 *)rdev->mc_fw->data;

  radeon_ucode_print_mc_hdr(&hdr->header);

  regs_size = le32_to_cpu(hdr->io_debug_size_bytes) / (4 * 2);
  new_io_mc_regs = (const __le32 *)
   (rdev->mc_fw->data + le32_to_cpu(hdr->io_debug_array_offset_bytes));
  ucode_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
  new_fw_data = (const __le32 *)
   (rdev->mc_fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));
 } else {
  ucode_size = rdev->mc_fw->size / 4;

  switch (rdev->family) {
  case 129:
   io_mc_regs = (u32 *)&bonaire_io_mc_regs;
   regs_size = BONAIRE_IO_MC_REGS_SIZE;
   break;
  case 128:
   io_mc_regs = (u32 *)&hawaii_io_mc_regs;
   regs_size = HAWAII_IO_MC_REGS_SIZE;
   break;
  default:
   return -EINVAL;
  }
  fw_data = (const __be32 *)rdev->mc_fw->data;
 }

 running = RREG32(MC_SEQ_SUP_CNTL) & RUN_MASK;

 if (running == 0) {

  WREG32(MC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000010);


  for (i = 0; i < regs_size; i++) {
   if (rdev->new_fw) {
    WREG32(MC_SEQ_IO_DEBUG_INDEX, le32_to_cpup(new_io_mc_regs++));
    WREG32(MC_SEQ_IO_DEBUG_DATA, le32_to_cpup(new_io_mc_regs++));
   } else {
    WREG32(MC_SEQ_IO_DEBUG_INDEX, io_mc_regs[(i << 1)]);
    WREG32(MC_SEQ_IO_DEBUG_DATA, io_mc_regs[(i << 1) + 1]);
   }
  }

  tmp = RREG32(MC_SEQ_MISC0);
  if ((rdev->pdev->device == 0x6649) && ((tmp & 0xff00) == 0x5600)) {
   WREG32(MC_SEQ_IO_DEBUG_INDEX, 5);
   WREG32(MC_SEQ_IO_DEBUG_DATA, 0x00000023);
   WREG32(MC_SEQ_IO_DEBUG_INDEX, 9);
   WREG32(MC_SEQ_IO_DEBUG_DATA, 0x000001f0);
  }


  for (i = 0; i < ucode_size; i++) {
   if (rdev->new_fw)
    WREG32(MC_SEQ_SUP_PGM, le32_to_cpup(new_fw_data++));
   else
    WREG32(MC_SEQ_SUP_PGM, be32_to_cpup(fw_data++));
  }


  WREG32(MC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000004);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000001);


  for (i = 0; i < rdev->usec_timeout; i++) {
   if (RREG32(MC_SEQ_TRAIN_WAKEUP_CNTL) & TRAIN_DONE_D0)
    break;
   udelay(1);
  }
  for (i = 0; i < rdev->usec_timeout; i++) {
   if (RREG32(MC_SEQ_TRAIN_WAKEUP_CNTL) & TRAIN_DONE_D1)
    break;
   udelay(1);
  }
 }

 return 0;
}
