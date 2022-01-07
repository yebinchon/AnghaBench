
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct pci_dev {int dev; } ;
struct cpt_vf {struct pci_dev* pdev; } ;
struct TYPE_2__ {size_t dev_count; struct cpt_vf** cdev; } ;


 int EINVAL ;
 scalar_t__ cav_register_algs () ;
 int dev_err (int *,char*) ;
 TYPE_1__ dev_handle ;

int cvm_crypto_init(struct cpt_vf *cptvf)
{
 struct pci_dev *pdev = cptvf->pdev;
 u32 dev_count;

 dev_count = dev_handle.dev_count;
 dev_handle.cdev[dev_count] = cptvf;
 dev_handle.dev_count++;

 if (dev_count == 3) {
  if (cav_register_algs()) {
   dev_err(&pdev->dev, "Error in registering crypto algorithms\n");
   return -EINVAL;
  }
 }

 return 0;
}
