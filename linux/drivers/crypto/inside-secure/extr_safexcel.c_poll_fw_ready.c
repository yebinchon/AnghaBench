
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int pes; } ;
struct safexcel_crypto_priv {int dev; TYPE_1__ config; } ;


 scalar_t__ EIP197_FW_FPP_READY ;
 scalar_t__ EIP197_FW_PUE_READY ;
 int EIP197_FW_START_POLLCNT ;
 scalar_t__ EIP197_PE (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_PE_ICE_SCRATCH_RAM (int) ;
 int dev_err (int ,char*,int,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static bool poll_fw_ready(struct safexcel_crypto_priv *priv, int fpp)
{
 int pe, pollcnt;
 u32 base, pollofs;

 if (fpp)
  pollofs = EIP197_FW_FPP_READY;
 else
  pollofs = EIP197_FW_PUE_READY;

 for (pe = 0; pe < priv->config.pes; pe++) {
  base = EIP197_PE_ICE_SCRATCH_RAM(pe);
  pollcnt = EIP197_FW_START_POLLCNT;
  while (pollcnt &&
         (readl_relaxed(EIP197_PE(priv) + base +
         pollofs) != 1)) {
   pollcnt--;
  }
  if (!pollcnt) {
   dev_err(priv->dev, "FW(%d) for PE %d failed to start\n",
    fpp, pe);
   return 0;
  }
 }
 return 1;
}
