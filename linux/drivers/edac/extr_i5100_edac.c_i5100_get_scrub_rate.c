
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int mc; } ;


 int I5100_MC ;
 int i5100_mc_scrben (int ) ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static int i5100_get_scrub_rate(struct mem_ctl_info *mci)
{
 struct i5100_priv *priv = mci->pvt_info;
 u32 dw;

 pci_read_config_dword(priv->mc, I5100_MC, &dw);

 return 5900000 * i5100_mc_scrben(dw);
}
