
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int pdev; struct ie31200_priv* pvt_info; } ;
struct ie31200_priv {int c1errlog; int c0errlog; } ;
struct ie31200_error_info {int errsts; int errsts2; void** eccerrlog; } ;


 int IE31200_ERRSTS ;
 int IE31200_ERRSTS_BITS ;
 int ie31200_clear_error_info (struct mem_ctl_info*) ;
 void* lo_hi_readq (int ) ;
 int nr_channels ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ie31200_get_and_clear_error_info(struct mem_ctl_info *mci,
          struct ie31200_error_info *info)
{
 struct pci_dev *pdev;
 struct ie31200_priv *priv = mci->pvt_info;

 pdev = to_pci_dev(mci->pdev);






 pci_read_config_word(pdev, IE31200_ERRSTS, &info->errsts);
 if (!(info->errsts & IE31200_ERRSTS_BITS))
  return;

 info->eccerrlog[0] = lo_hi_readq(priv->c0errlog);
 if (nr_channels == 2)
  info->eccerrlog[1] = lo_hi_readq(priv->c1errlog);

 pci_read_config_word(pdev, IE31200_ERRSTS, &info->errsts2);







 if ((info->errsts ^ info->errsts2) & IE31200_ERRSTS_BITS) {
  info->eccerrlog[0] = lo_hi_readq(priv->c0errlog);
  if (nr_channels == 2)
   info->eccerrlog[1] =
    lo_hi_readq(priv->c1errlog);
 }

 ie31200_clear_error_info(mci);
}
