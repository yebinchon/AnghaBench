
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int AES_INTR_MASK ;
 int AES_INTR_PENDING ;
 int AES_INTR_REG ;
 int ENOMEM ;
 int * _iobase ;
 int crypto_register_alg (int *) ;
 int crypto_unregister_alg (int *) ;
 int dev_err (int *,char*) ;
 int dev_notice (int *,char*) ;
 int geode_alg ;
 int geode_cbc_alg ;
 int geode_ecb_alg ;
 int iowrite32 (int,int *) ;
 int lock ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int * pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int *) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int geode_aes_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 int ret;

 ret = pci_enable_device(dev);
 if (ret)
  return ret;

 ret = pci_request_regions(dev, "geode-aes");
 if (ret)
  goto eenable;

 _iobase = pci_iomap(dev, 0, 0);

 if (_iobase == ((void*)0)) {
  ret = -ENOMEM;
  goto erequest;
 }

 spin_lock_init(&lock);


 iowrite32(AES_INTR_PENDING | AES_INTR_MASK, _iobase + AES_INTR_REG);

 ret = crypto_register_alg(&geode_alg);
 if (ret)
  goto eiomap;

 ret = crypto_register_alg(&geode_ecb_alg);
 if (ret)
  goto ealg;

 ret = crypto_register_alg(&geode_cbc_alg);
 if (ret)
  goto eecb;

 dev_notice(&dev->dev, "GEODE AES engine enabled.\n");
 return 0;

 eecb:
 crypto_unregister_alg(&geode_ecb_alg);

 ealg:
 crypto_unregister_alg(&geode_alg);

 eiomap:
 pci_iounmap(dev, _iobase);

 erequest:
 pci_release_regions(dev);

 eenable:
 pci_disable_device(dev);

 dev_err(&dev->dev, "GEODE AES initialization failed.\n");
 return ret;
}
