
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {TYPE_1__** mtr; struct pci_dev* ch1mm; struct pci_dev* ch0mm; } ;
struct TYPE_2__ {int width; scalar_t__ numcol; scalar_t__ numrow; scalar_t__ numbank; int ethrottle; int present; } ;


 int I5100_CHANNELS ;
 int I5100_MAX_RANKS_PER_CHAN ;
 int I5100_MTR_0 ;
 int I5100_MTR_4 ;
 int i5100_mtr_ethrottle (int ) ;
 scalar_t__ i5100_mtr_numbank (int ) ;
 scalar_t__ i5100_mtr_numcol (int ) ;
 scalar_t__ i5100_mtr_numrow (int ) ;
 int i5100_mtr_present (int ) ;
 int i5100_mtr_width (int ) ;
 int pci_read_config_word (struct pci_dev*,unsigned int const,int *) ;

__attribute__((used)) static void i5100_init_mtr(struct mem_ctl_info *mci)
{
 struct i5100_priv *priv = mci->pvt_info;
 struct pci_dev *mms[2] = { priv->ch0mm, priv->ch1mm };
 int i;

 for (i = 0; i < I5100_CHANNELS; i++) {
  int j;
  struct pci_dev *pdev = mms[i];

  for (j = 0; j < I5100_MAX_RANKS_PER_CHAN; j++) {
   const unsigned addr =
    (j < 4) ? I5100_MTR_0 + j * 2 :
       I5100_MTR_4 + (j - 4) * 2;
   u16 w;

   pci_read_config_word(pdev, addr, &w);

   priv->mtr[i][j].present = i5100_mtr_present(w);
   priv->mtr[i][j].ethrottle = i5100_mtr_ethrottle(w);
   priv->mtr[i][j].width = 4 + 4 * i5100_mtr_width(w);
   priv->mtr[i][j].numbank = 2 + i5100_mtr_numbank(w);
   priv->mtr[i][j].numrow = 13 + i5100_mtr_numrow(w);
   priv->mtr[i][j].numcol = 10 + i5100_mtr_numcol(w);
  }
 }
}
