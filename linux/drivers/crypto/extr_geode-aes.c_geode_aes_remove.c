
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int * _iobase ;
 int crypto_unregister_alg (int *) ;
 int geode_alg ;
 int geode_cbc_alg ;
 int geode_ecb_alg ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int *) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void geode_aes_remove(struct pci_dev *dev)
{
 crypto_unregister_alg(&geode_alg);
 crypto_unregister_alg(&geode_ecb_alg);
 crypto_unregister_alg(&geode_cbc_alg);

 pci_iounmap(dev, _iobase);
 _iobase = ((void*)0);

 pci_release_regions(dev);
 pci_disable_device(dev);
}
