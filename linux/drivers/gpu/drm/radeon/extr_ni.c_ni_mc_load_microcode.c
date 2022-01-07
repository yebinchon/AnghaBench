
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int family; int usec_timeout; TYPE_1__* mc_fw; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ data; } ;


 int BTC_IO_MC_REGS_SIZE ;
 int BTC_MC_UCODE_SIZE ;
 int CAYMAN_MC_UCODE_SIZE ;




 int EINVAL ;
 int MC_IO_PAD_CNTL_D0 ;
 int MC_SEQ_IO_DEBUG_DATA ;
 int MC_SEQ_IO_DEBUG_INDEX ;
 int MC_SEQ_MISC0 ;
 int MC_SEQ_MISC0_GDDR5_MASK ;
 int MC_SEQ_MISC0_GDDR5_SHIFT ;
 int MC_SEQ_MISC0_GDDR5_VALUE ;
 int MC_SEQ_SUP_CNTL ;
 int MC_SEQ_SUP_PGM ;
 int MC_SHARED_BLACKOUT_CNTL ;
 int MEM_FALL_OUT_CMD ;
 int RREG32 (int ) ;
 int RUN_MASK ;
 int WREG32 (int ,int) ;
 int barts_io_mc_regs ;
 int be32_to_cpup (int ) ;
 int caicos_io_mc_regs ;
 int cayman_io_mc_regs ;
 int turks_io_mc_regs ;
 int udelay (int) ;

int ni_mc_load_microcode(struct radeon_device *rdev)
{
 const __be32 *fw_data;
 u32 mem_type, running, blackout = 0;
 u32 *io_mc_regs;
 int i, ucode_size, regs_size;

 if (!rdev->mc_fw)
  return -EINVAL;

 switch (rdev->family) {
 case 131:
  io_mc_regs = (u32 *)&barts_io_mc_regs;
  ucode_size = BTC_MC_UCODE_SIZE;
  regs_size = BTC_IO_MC_REGS_SIZE;
  break;
 case 128:
  io_mc_regs = (u32 *)&turks_io_mc_regs;
  ucode_size = BTC_MC_UCODE_SIZE;
  regs_size = BTC_IO_MC_REGS_SIZE;
  break;
 case 130:
 default:
  io_mc_regs = (u32 *)&caicos_io_mc_regs;
  ucode_size = BTC_MC_UCODE_SIZE;
  regs_size = BTC_IO_MC_REGS_SIZE;
  break;
 case 129:
  io_mc_regs = (u32 *)&cayman_io_mc_regs;
  ucode_size = CAYMAN_MC_UCODE_SIZE;
  regs_size = BTC_IO_MC_REGS_SIZE;
  break;
 }

 mem_type = (RREG32(MC_SEQ_MISC0) & MC_SEQ_MISC0_GDDR5_MASK) >> MC_SEQ_MISC0_GDDR5_SHIFT;
 running = RREG32(MC_SEQ_SUP_CNTL) & RUN_MASK;

 if ((mem_type == MC_SEQ_MISC0_GDDR5_VALUE) && (running == 0)) {
  if (running) {
   blackout = RREG32(MC_SHARED_BLACKOUT_CNTL);
   WREG32(MC_SHARED_BLACKOUT_CNTL, 1);
  }


  WREG32(MC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000010);


  for (i = 0; i < regs_size; i++) {
   WREG32(MC_SEQ_IO_DEBUG_INDEX, io_mc_regs[(i << 1)]);
   WREG32(MC_SEQ_IO_DEBUG_DATA, io_mc_regs[(i << 1) + 1]);
  }

  fw_data = (const __be32 *)rdev->mc_fw->data;
  for (i = 0; i < ucode_size; i++)
   WREG32(MC_SEQ_SUP_PGM, be32_to_cpup(fw_data++));


  WREG32(MC_SEQ_SUP_CNTL, 0x00000008);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000004);
  WREG32(MC_SEQ_SUP_CNTL, 0x00000001);


  for (i = 0; i < rdev->usec_timeout; i++) {
   if (RREG32(MC_IO_PAD_CNTL_D0) & MEM_FALL_OUT_CMD)
    break;
   udelay(1);
  }

  if (running)
   WREG32(MC_SHARED_BLACKOUT_CNTL, blackout);
 }

 return 0;
}
