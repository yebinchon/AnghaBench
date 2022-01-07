
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pes; } ;
struct safexcel_crypto_priv {TYPE_1__ config; } ;


 scalar_t__ EIP197_PE (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_PE_ICE_FPP_CTRL (int) ;
 scalar_t__ EIP197_PE_ICE_PUE_CTRL (int) ;
 scalar_t__ EIP197_PE_ICE_RAM_CTRL (int) ;
 int EIP197_PE_ICE_UENG_DEBUG_RESET ;
 int EIP197_PE_ICE_UENG_INIT_ALIGN_MASK ;
 int EIP197_PE_ICE_UENG_START_OFFSET (int) ;
 int poll_fw_ready (struct safexcel_crypto_priv*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static bool eip197_start_firmware(struct safexcel_crypto_priv *priv,
      int ipuesz, int ifppsz, int minifw)
{
 int pe;
 u32 val;

 for (pe = 0; pe < priv->config.pes; pe++) {

  writel(0, EIP197_PE(priv) + EIP197_PE_ICE_RAM_CTRL(pe));


  if (minifw)
   val = 0;
  else
   val = EIP197_PE_ICE_UENG_START_OFFSET((ifppsz - 1) &
     EIP197_PE_ICE_UENG_INIT_ALIGN_MASK) |
    EIP197_PE_ICE_UENG_DEBUG_RESET;
  writel(val, EIP197_PE(priv) + EIP197_PE_ICE_FPP_CTRL(pe));


  if (minifw)
   val = 0;
  else
   val = EIP197_PE_ICE_UENG_START_OFFSET((ipuesz - 1) &
     EIP197_PE_ICE_UENG_INIT_ALIGN_MASK) |
    EIP197_PE_ICE_UENG_DEBUG_RESET;
  writel(val, EIP197_PE(priv) + EIP197_PE_ICE_PUE_CTRL(pe));
 }


 if (minifw)
  return 1;


 if (!poll_fw_ready(priv, 1))
  return 0;
 if (!poll_fw_ready(priv, 0))
  return 0;

 return 1;
}
