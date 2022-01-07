
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {int name; TYPE_1__ dev; } ;


 TYPE_2__ ali1563_adapter ;
 int ali1563_setup (struct pci_dev*) ;
 int ali1563_shutdown (struct pci_dev*) ;
 int ali1563_smba ;
 int dev_warn (int *,char*,int) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int ali1563_probe(struct pci_dev *dev,
    const struct pci_device_id *id_table)
{
 int error;

 error = ali1563_setup(dev);
 if (error)
  goto exit;
 ali1563_adapter.dev.parent = &dev->dev;
 snprintf(ali1563_adapter.name, sizeof(ali1563_adapter.name),
   "SMBus ALi 1563 Adapter @ %04x", ali1563_smba);
 error = i2c_add_adapter(&ali1563_adapter);
 if (error)
  goto exit_shutdown;
 return 0;

exit_shutdown:
 ali1563_shutdown(dev);
exit:
 dev_warn(&dev->dev, "ALi1563 SMBus probe failed (%d)\n", error);
 return error;
}
