
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ device; int revision; int dev; } ;
struct i2c_piix4_adapdata {scalar_t__ smba; } ;


 int HUDSON2_MAIN_PORTS ;
 scalar_t__ PCI_DEVICE_ID_AMD_HUDSON2_SMBUS ;
 scalar_t__ PCI_DEVICE_ID_AMD_KERNCZ_SMBUS ;
 int PIIX4_MAX_ADAPTERS ;
 int dev_err (int *,char*) ;
 int i2c_del_adapter (struct i2c_piix4_adapdata*) ;
 struct i2c_piix4_adapdata* i2c_get_adapdata (struct i2c_piix4_adapdata*) ;
 int kfree (struct i2c_piix4_adapdata*) ;
 int piix4_adapter_count ;
 int piix4_add_adapter (struct pci_dev*,unsigned short,int,int,int,int,int ,struct i2c_piix4_adapdata**) ;
 struct i2c_piix4_adapdata** piix4_main_adapters ;
 int * piix4_main_port_names_sb800 ;

__attribute__((used)) static int piix4_add_adapters_sb800(struct pci_dev *dev, unsigned short smba,
        bool notify_imc)
{
 struct i2c_piix4_adapdata *adapdata;
 int port;
 int retval;

 if (dev->device == PCI_DEVICE_ID_AMD_KERNCZ_SMBUS ||
     (dev->device == PCI_DEVICE_ID_AMD_HUDSON2_SMBUS &&
      dev->revision >= 0x1F)) {
  piix4_adapter_count = HUDSON2_MAIN_PORTS;
 } else {
  piix4_adapter_count = PIIX4_MAX_ADAPTERS;
 }

 for (port = 0; port < piix4_adapter_count; port++) {
  u8 hw_port_nr = port == 0 ? 0 : port + 1;

  retval = piix4_add_adapter(dev, smba, 1, port, notify_imc,
        hw_port_nr,
        piix4_main_port_names_sb800[port],
        &piix4_main_adapters[port]);
  if (retval < 0)
   goto error;
 }

 return retval;

error:
 dev_err(&dev->dev,
  "Error setting up SB800 adapters. Unregistering!\n");
 while (--port >= 0) {
  adapdata = i2c_get_adapdata(piix4_main_adapters[port]);
  if (adapdata->smba) {
   i2c_del_adapter(piix4_main_adapters[port]);
   kfree(adapdata);
   kfree(piix4_main_adapters[port]);
   piix4_main_adapters[port] = ((void*)0);
  }
 }

 return retval;
}
