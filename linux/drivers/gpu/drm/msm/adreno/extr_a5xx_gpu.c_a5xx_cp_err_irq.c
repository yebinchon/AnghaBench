
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msm_gpu {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int A5XX_CP_INT_CP_AHB_ERROR ;
 int A5XX_CP_INT_CP_DMA_ERROR ;
 int A5XX_CP_INT_CP_HW_FAULT_ERROR ;
 int A5XX_CP_INT_CP_OPCODE_ERROR ;
 int A5XX_CP_INT_CP_REGISTER_PROTECTION_ERROR ;
 int REG_A5XX_CP_AHB_FAULT ;
 int REG_A5XX_CP_HW_FAULT ;
 int REG_A5XX_CP_INTERRUPT_STATUS ;
 int REG_A5XX_CP_PFP_STAT_ADDR ;
 int REG_A5XX_CP_PFP_STAT_DATA ;
 int REG_A5XX_CP_PROTECT_STATUS ;
 int dev_err_ratelimited (int ,char*,...) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;

__attribute__((used)) static void a5xx_cp_err_irq(struct msm_gpu *gpu)
{
 u32 status = gpu_read(gpu, REG_A5XX_CP_INTERRUPT_STATUS);

 if (status & A5XX_CP_INT_CP_OPCODE_ERROR) {
  u32 val;

  gpu_write(gpu, REG_A5XX_CP_PFP_STAT_ADDR, 0);






  gpu_read(gpu, REG_A5XX_CP_PFP_STAT_DATA);
  val = gpu_read(gpu, REG_A5XX_CP_PFP_STAT_DATA);

  dev_err_ratelimited(gpu->dev->dev, "CP | opcode error | possible opcode=0x%8.8X\n",
   val);
 }

 if (status & A5XX_CP_INT_CP_HW_FAULT_ERROR)
  dev_err_ratelimited(gpu->dev->dev, "CP | HW fault | status=0x%8.8X\n",
   gpu_read(gpu, REG_A5XX_CP_HW_FAULT));

 if (status & A5XX_CP_INT_CP_DMA_ERROR)
  dev_err_ratelimited(gpu->dev->dev, "CP | DMA error\n");

 if (status & A5XX_CP_INT_CP_REGISTER_PROTECTION_ERROR) {
  u32 val = gpu_read(gpu, REG_A5XX_CP_PROTECT_STATUS);

  dev_err_ratelimited(gpu->dev->dev,
   "CP | protected mode error | %s | addr=0x%8.8X | status=0x%8.8X\n",
   val & (1 << 24) ? "WRITE" : "READ",
   (val & 0xFFFFF) >> 2, val);
 }

 if (status & A5XX_CP_INT_CP_AHB_ERROR) {
  u32 status = gpu_read(gpu, REG_A5XX_CP_AHB_FAULT);
  const char *access[16] = { "reserved", "reserved",
   "timestamp lo", "timestamp hi", "pfp read", "pfp write",
   "", "", "me read", "me write", "", "", "crashdump read",
   "crashdump write" };

  dev_err_ratelimited(gpu->dev->dev,
   "CP | AHB error | addr=%X access=%s error=%d | status=0x%8.8X\n",
   status & 0xFFFFF, access[(status >> 24) & 0xF],
   (status & (1 << 31)), status);
 }
}
