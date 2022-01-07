
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int mc; } ;


 int HZ ;
 int I5100_SPDCMD ;
 int I5100_SPDDATA ;
 int i5100_spdcmd_create (int,int,int,int,int ,int ) ;
 scalar_t__ i5100_spddata_busy (int ) ;
 int i5100_spddata_data (int ) ;
 int i5100_spddata_rdo (int ) ;
 scalar_t__ i5100_spddata_sbe (int ) ;
 int jiffies ;
 int pci_read_config_word (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int i5100_read_spd_byte(const struct mem_ctl_info *mci,
          u8 ch, u8 slot, u8 addr, u8 *byte)
{
 struct i5100_priv *priv = mci->pvt_info;
 u16 w;
 unsigned long et;

 pci_read_config_word(priv->mc, I5100_SPDDATA, &w);
 if (i5100_spddata_busy(w))
  return -1;

 pci_write_config_dword(priv->mc, I5100_SPDCMD,
          i5100_spdcmd_create(0xa, 1, ch * 4 + slot, addr,
         0, 0));


 et = jiffies + HZ / 10;
 udelay(100);
 while (1) {
  pci_read_config_word(priv->mc, I5100_SPDDATA, &w);
  if (!i5100_spddata_busy(w))
   break;
  udelay(100);
 }

 if (!i5100_spddata_rdo(w) || i5100_spddata_sbe(w))
  return -1;

 *byte = i5100_spddata_data(w);

 return 0;
}
