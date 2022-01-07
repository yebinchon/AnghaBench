
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_6__ {int class; TYPE_1__ dev; struct pasemi_smbus* algo_data; int * algo; int name; int owner; } ;
struct pasemi_smbus {int size; int base; TYPE_3__ adapter; struct pci_dev* dev; } ;
struct TYPE_5__ {int name; } ;


 int CLK_100K_DIV ;
 int CTL_CLK_M ;
 int CTL_MRR ;
 int CTL_MTR ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int IORESOURCE_IO ;
 int REG_CTL ;
 int THIS_MODULE ;
 int i2c_add_adapter (TYPE_3__*) ;
 int kfree (struct pasemi_smbus*) ;
 struct pasemi_smbus* kzalloc (int,int ) ;
 TYPE_2__ pasemi_smb_driver ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pasemi_smbus*) ;
 int reg_write (struct pasemi_smbus*,int ,int) ;
 int release_region (int ,int ) ;
 int request_region (int ,int ,int ) ;
 int smbus_algorithm ;
 int snprintf (int ,int,char*,int ) ;

__attribute__((used)) static int pasemi_smb_probe(struct pci_dev *dev,
          const struct pci_device_id *id)
{
 struct pasemi_smbus *smbus;
 int error;

 if (!(pci_resource_flags(dev, 0) & IORESOURCE_IO))
  return -ENODEV;

 smbus = kzalloc(sizeof(struct pasemi_smbus), GFP_KERNEL);
 if (!smbus)
  return -ENOMEM;

 smbus->dev = dev;
 smbus->base = pci_resource_start(dev, 0);
 smbus->size = pci_resource_len(dev, 0);

 if (!request_region(smbus->base, smbus->size,
       pasemi_smb_driver.name)) {
  error = -EBUSY;
  goto out_kfree;
 }

 smbus->adapter.owner = THIS_MODULE;
 snprintf(smbus->adapter.name, sizeof(smbus->adapter.name),
   "PA Semi SMBus adapter at 0x%lx", smbus->base);
 smbus->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 smbus->adapter.algo = &smbus_algorithm;
 smbus->adapter.algo_data = smbus;


 smbus->adapter.dev.parent = &dev->dev;

 reg_write(smbus, REG_CTL, (CTL_MTR | CTL_MRR |
    (CLK_100K_DIV & CTL_CLK_M)));

 error = i2c_add_adapter(&smbus->adapter);
 if (error)
  goto out_release_region;

 pci_set_drvdata(dev, smbus);

 return 0;

 out_release_region:
 release_region(smbus->base, smbus->size);
 out_kfree:
 kfree(smbus);
 return error;
}
