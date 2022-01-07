
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct i2c_piix4_adapdata {int class; unsigned short smba; int sb800_main; int port; int notify_imc; int name; TYPE_1__ dev; int * algo; int owner; } ;
struct i2c_adapter {int class; unsigned short smba; int sb800_main; int port; int notify_imc; int name; TYPE_1__ dev; int * algo; int owner; } ;


 int ACPI_COMPANION (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int SMBIOSIZE ;
 int THIS_MODULE ;
 int acpi_preset_companion (TYPE_1__*,int ,int) ;
 scalar_t__ has_acpi_companion (int *) ;
 int i2c_add_adapter (struct i2c_piix4_adapdata*) ;
 int i2c_set_adapdata (struct i2c_piix4_adapdata*,struct i2c_piix4_adapdata*) ;
 int kfree (struct i2c_piix4_adapdata*) ;
 struct i2c_piix4_adapdata* kzalloc (int,int ) ;
 int piix4_port_shift_sb800 ;
 int piix4_smbus_algorithm_sb800 ;
 int release_region (unsigned short,int ) ;
 int smbus_algorithm ;
 int snprintf (int ,int,char*,char const*,unsigned short) ;

__attribute__((used)) static int piix4_add_adapter(struct pci_dev *dev, unsigned short smba,
        bool sb800_main, u8 port, bool notify_imc,
        u8 hw_port_nr, const char *name,
        struct i2c_adapter **padap)
{
 struct i2c_adapter *adap;
 struct i2c_piix4_adapdata *adapdata;
 int retval;

 adap = kzalloc(sizeof(*adap), GFP_KERNEL);
 if (adap == ((void*)0)) {
  release_region(smba, SMBIOSIZE);
  return -ENOMEM;
 }

 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 adap->algo = sb800_main ? &piix4_smbus_algorithm_sb800
    : &smbus_algorithm;

 adapdata = kzalloc(sizeof(*adapdata), GFP_KERNEL);
 if (adapdata == ((void*)0)) {
  kfree(adap);
  release_region(smba, SMBIOSIZE);
  return -ENOMEM;
 }

 adapdata->smba = smba;
 adapdata->sb800_main = sb800_main;
 adapdata->port = port << piix4_port_shift_sb800;
 adapdata->notify_imc = notify_imc;


 adap->dev.parent = &dev->dev;

 if (has_acpi_companion(&dev->dev)) {
  acpi_preset_companion(&adap->dev,
          ACPI_COMPANION(&dev->dev),
          hw_port_nr);
 }

 snprintf(adap->name, sizeof(adap->name),
  "SMBus PIIX4 adapter%s at %04x", name, smba);

 i2c_set_adapdata(adap, adapdata);

 retval = i2c_add_adapter(adap);
 if (retval) {
  kfree(adapdata);
  kfree(adap);
  release_region(smba, SMBIOSIZE);
  return retval;
 }

 *padap = adap;
 return 0;
}
