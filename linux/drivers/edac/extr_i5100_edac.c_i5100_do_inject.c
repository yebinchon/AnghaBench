
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int inject_hlinesel; int inject_eccmask1; int inject_deviceptr2; int inject_deviceptr1; scalar_t__ inject_channel; int einj; int mc; int inject_eccmask2; } ;


 int I5100_DINJ0 ;
 int I5100_MEM0EINJMSK0 ;
 int I5100_MEM0EINJMSK1 ;
 int I5100_MEM1EINJMSK0 ;
 int I5100_MEM1EINJMSK1 ;
 int I5100_MEMXEINJMSK0_EINJEN ;
 int pci_write_config_byte (int ,int ,int) ;
 int pci_write_config_dword (int ,int ,int) ;
 int pci_write_config_word (int ,int ,int ) ;

__attribute__((used)) static void i5100_do_inject(struct mem_ctl_info *mci)
{
 struct i5100_priv *priv = mci->pvt_info;
 u32 mask0;
 u16 mask1;
 mask0 = ((priv->inject_hlinesel & 0x3) << 28) |
  I5100_MEMXEINJMSK0_EINJEN |
  ((priv->inject_eccmask1 & 0xffff) << 10) |
  ((priv->inject_deviceptr2 & 0x1f) << 5) |
  (priv->inject_deviceptr1 & 0x1f);




 mask1 = priv->inject_eccmask2;

 if (priv->inject_channel == 0) {
  pci_write_config_dword(priv->mc, I5100_MEM0EINJMSK0, mask0);
  pci_write_config_word(priv->mc, I5100_MEM0EINJMSK1, mask1);
 } else {
  pci_write_config_dword(priv->mc, I5100_MEM1EINJMSK0, mask0);
  pci_write_config_word(priv->mc, I5100_MEM1EINJMSK1, mask1);
 }
 pci_write_config_byte(priv->einj, I5100_DINJ0, 0xaa);
 pci_write_config_byte(priv->einj, I5100_DINJ0, 0xab);
}
