
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pes; } ;
struct safexcel_crypto_priv {TYPE_1__ config; } ;


 int EIP197_NUM_OF_SCRATCH_BLOCKS ;
 scalar_t__ EIP197_PE (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_PE_ICE_FPP_CTRL (int) ;
 scalar_t__ EIP197_PE_ICE_PPTF_CTRL (int) ;
 scalar_t__ EIP197_PE_ICE_PUE_CTRL (int) ;
 scalar_t__ EIP197_PE_ICE_PUTF_CTRL (int) ;
 scalar_t__ EIP197_PE_ICE_RAM_CTRL (int) ;
 int EIP197_PE_ICE_RAM_CTRL_FPP_PROG_EN ;
 scalar_t__ EIP197_PE_ICE_SCRATCH_CTRL (int) ;
 int EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_ACCESS ;
 int EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_TIMER ;
 int EIP197_PE_ICE_SCRATCH_CTRL_SCRATCH_ACCESS ;
 int EIP197_PE_ICE_SCRATCH_CTRL_TIMER_EN ;
 scalar_t__ EIP197_PE_ICE_SCRATCH_RAM (int) ;
 int EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR ;
 int EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR ;
 int EIP197_PE_ICE_x_CTRL_SW_RESET ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void eip197_init_firmware(struct safexcel_crypto_priv *priv)
{
 int pe, i;
 u32 val;

 for (pe = 0; pe < priv->config.pes; pe++) {

  writel(3, EIP197_PE(priv) + EIP197_PE_ICE_PUTF_CTRL(pe));
  writel(0, EIP197_PE(priv) + EIP197_PE_ICE_PPTF_CTRL(pe));


  val = readl(EIP197_PE(priv) + EIP197_PE_ICE_SCRATCH_CTRL(pe));
  val |= EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_TIMER |
         EIP197_PE_ICE_SCRATCH_CTRL_TIMER_EN |
         EIP197_PE_ICE_SCRATCH_CTRL_SCRATCH_ACCESS |
         EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_ACCESS;
  writel(val, EIP197_PE(priv) + EIP197_PE_ICE_SCRATCH_CTRL(pe));


  for (i = 0; i < EIP197_NUM_OF_SCRATCH_BLOCKS; i++)
   writel(0, EIP197_PE(priv) +
      EIP197_PE_ICE_SCRATCH_RAM(pe) + (i << 2));


  writel(EIP197_PE_ICE_x_CTRL_SW_RESET |
         EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR |
         EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR,
         EIP197_PE(priv) + EIP197_PE_ICE_FPP_CTRL(pe));


  writel(EIP197_PE_ICE_x_CTRL_SW_RESET |
         EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR |
         EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR,
         EIP197_PE(priv) + EIP197_PE_ICE_PUE_CTRL(pe));


  writel(EIP197_PE_ICE_RAM_CTRL_FPP_PROG_EN,
         EIP197_PE(priv) + EIP197_PE_ICE_RAM_CTRL(pe));
 }

}
