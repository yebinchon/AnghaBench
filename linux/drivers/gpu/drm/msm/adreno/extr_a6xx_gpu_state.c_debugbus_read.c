
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_gpu {int dummy; } ;


 int A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_BLK_SEL (int) ;
 int A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_INDEX (int) ;
 int REG_A6XX_DBGC_CFG_DBGBUS_SEL_A ;
 int REG_A6XX_DBGC_CFG_DBGBUS_SEL_B ;
 int REG_A6XX_DBGC_CFG_DBGBUS_SEL_C ;
 int REG_A6XX_DBGC_CFG_DBGBUS_SEL_D ;
 int REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF1 ;
 int REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF2 ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int debugbus_read(struct msm_gpu *gpu, u32 block, u32 offset,
  u32 *data)
{
 u32 reg = A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_INDEX(offset) |
  A6XX_DBGC_CFG_DBGBUS_SEL_D_PING_BLK_SEL(block);

 gpu_write(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_A, reg);
 gpu_write(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_B, reg);
 gpu_write(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_C, reg);
 gpu_write(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_D, reg);


 udelay(1);

 data[0] = gpu_read(gpu, REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF2);
 data[1] = gpu_read(gpu, REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF1);

 return 2;
}
