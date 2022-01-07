
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gpu {scalar_t__ sec_mode; int dev; } ;


 scalar_t__ ETNA_SEC_NONE ;
 int VIVS_MMUv2_EXCEPTION_ADDR (int) ;
 int VIVS_MMUv2_SEC_EXCEPTION_ADDR ;
 int VIVS_MMUv2_SEC_STATUS ;
 int VIVS_MMUv2_STATUS ;
 int VIVS_MMUv2_STATUS_EXCEPTION0__MASK ;
 int dev_err_ratelimited (int ,char*,int,...) ;
 int gpu_read (struct etnaviv_gpu*,int) ;

__attribute__((used)) static void dump_mmu_fault(struct etnaviv_gpu *gpu)
{
 u32 status_reg, status;
 int i;

 if (gpu->sec_mode == ETNA_SEC_NONE)
  status_reg = VIVS_MMUv2_STATUS;
 else
  status_reg = VIVS_MMUv2_SEC_STATUS;

 status = gpu_read(gpu, status_reg);
 dev_err_ratelimited(gpu->dev, "MMU fault status 0x%08x\n", status);

 for (i = 0; i < 4; i++) {
  u32 address_reg;

  if (!(status & (VIVS_MMUv2_STATUS_EXCEPTION0__MASK << (i * 4))))
   continue;

  if (gpu->sec_mode == ETNA_SEC_NONE)
   address_reg = VIVS_MMUv2_EXCEPTION_ADDR(i);
  else
   address_reg = VIVS_MMUv2_SEC_EXCEPTION_ADDR;

  dev_err_ratelimited(gpu->dev, "MMU %d fault addr 0x%08x\n", i,
        gpu_read(gpu, address_reg));
 }
}
