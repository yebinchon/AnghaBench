
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int scrub_enable; int mc; int i5100_scrubbing; } ;


 int I5100_MC ;
 int I5100_MC_SCRBEN_MASK ;
 int I5100_SCRUB_REFRESH_RATE ;
 int cancel_delayed_work (int *) ;
 int i5100_mc_scrben (int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int i5100_set_scrub_rate(struct mem_ctl_info *mci, u32 bandwidth)
{
 struct i5100_priv *priv = mci->pvt_info;
 u32 dw;

 pci_read_config_dword(priv->mc, I5100_MC, &dw);
 if (bandwidth) {
  priv->scrub_enable = 1;
  dw |= I5100_MC_SCRBEN_MASK;
  schedule_delayed_work(&(priv->i5100_scrubbing),
          I5100_SCRUB_REFRESH_RATE);
 } else {
  priv->scrub_enable = 0;
  dw &= ~I5100_MC_SCRBEN_MASK;
  cancel_delayed_work(&(priv->i5100_scrubbing));
 }
 pci_write_config_dword(priv->mc, I5100_MC, dw);

 pci_read_config_dword(priv->mc, I5100_MC, &dw);

 bandwidth = 5900000 * i5100_mc_scrben(dw);

 return bandwidth;
}
