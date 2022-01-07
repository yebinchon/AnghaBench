
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int EEXIST ;
 int EIO ;
 int GPIO_BASE ;
 int GPIO_CTRL ;
 int GPIO_EN ;
 int ICH7_GPIO_SIZE ;
 int KBUILD_MODNAME ;
 int PMBASE ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int g_pm_io_base ;
 int * gp_gpio_resource ;
 int ich7_gpio_init (int *) ;
 int ich7_lpc_cleanup (int *) ;
 int nas_gpio_io_base ;
 struct pci_dev* nas_gpio_pci_dev ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int * request_region (int,int ,int ) ;

__attribute__((used)) static int ich7_lpc_probe(struct pci_dev *dev,
        const struct pci_device_id *id)
{
 int status;
 u32 gc = 0;

 status = pci_enable_device(dev);
 if (status) {
  dev_err(&dev->dev, "pci_enable_device failed\n");
  return -EIO;
 }

 nas_gpio_pci_dev = dev;
 status = pci_read_config_dword(dev, PMBASE, &g_pm_io_base);
 if (status)
  goto out;
 g_pm_io_base &= 0x00000ff80;

 status = pci_read_config_dword(dev, GPIO_CTRL, &gc);
 if (!(GPIO_EN & gc)) {
  status = -EEXIST;
  dev_info(&dev->dev,
      "ERROR: The LPC GPIO Block has not been enabled.\n");
  goto out;
 }

 status = pci_read_config_dword(dev, GPIO_BASE, &nas_gpio_io_base);
 if (0 > status) {
  dev_info(&dev->dev, "Unable to read GPIOBASE.\n");
  goto out;
 }
 dev_dbg(&dev->dev, ": GPIOBASE = 0x%08x\n", nas_gpio_io_base);
 nas_gpio_io_base &= 0x00000ffc0;




 gp_gpio_resource = request_region(nas_gpio_io_base, ICH7_GPIO_SIZE,
       KBUILD_MODNAME);
 if (((void*)0) == gp_gpio_resource) {
  dev_info(&dev->dev,
    "ERROR Unable to register GPIO I/O addresses.\n");
  status = -1;
  goto out;
 }




 ich7_gpio_init(&dev->dev);

out:
 if (status) {
  ich7_lpc_cleanup(&dev->dev);
  pci_disable_device(dev);
 }
 return status;
}
