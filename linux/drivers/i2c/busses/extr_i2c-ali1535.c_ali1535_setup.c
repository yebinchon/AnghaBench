
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int name; } ;


 unsigned char ALI1535_SMBIO_EN ;
 int ALI1535_SMB_IOSIZE ;
 int EBUSY ;
 int ENODEV ;
 int IORESOURCE_IO ;
 int SMBBA ;
 int SMBCFG ;
 int SMBCLK ;
 int SMBHSTCFG ;
 int SMBREV ;
 int acpi_check_region (unsigned char,int,int ) ;
 TYPE_1__ ali1535_driver ;
 int ali1535_offset ;
 unsigned char ali1535_smba ;
 int dev_dbg (int *,char*,unsigned char) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 unsigned char pci_resource_start (struct pci_dev*,int ) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int release_region (unsigned char,int) ;
 int request_region (unsigned char,int,int ) ;

__attribute__((used)) static int ali1535_setup(struct pci_dev *dev)
{
 int retval;
 unsigned char temp;







 retval = pci_enable_device(dev);
 if (retval) {
  dev_err(&dev->dev, "ALI1535_smb can't enable device\n");
  goto exit;
 }


 pci_read_config_word(dev, SMBBA, &ali1535_offset);
 dev_dbg(&dev->dev, "ALI1535_smb is at offset 0x%04x\n", ali1535_offset);
 ali1535_offset &= (0xffff & ~(ALI1535_SMB_IOSIZE - 1));
 if (ali1535_offset == 0) {
  dev_warn(&dev->dev,
   "ALI1535_smb region uninitialized - upgrade BIOS?\n");
  retval = -ENODEV;
  goto exit;
 }

 if (pci_resource_flags(dev, 0) & IORESOURCE_IO)
  ali1535_smba = pci_resource_start(dev, 0) + ali1535_offset;
 else
  ali1535_smba = ali1535_offset;

 retval = acpi_check_region(ali1535_smba, ALI1535_SMB_IOSIZE,
       ali1535_driver.name);
 if (retval)
  goto exit;

 if (!request_region(ali1535_smba, ALI1535_SMB_IOSIZE,
       ali1535_driver.name)) {
  dev_err(&dev->dev, "ALI1535_smb region 0x%lx already in use!\n",
   ali1535_smba);
  retval = -EBUSY;
  goto exit;
 }


 pci_read_config_byte(dev, SMBCFG, &temp);
 if ((temp & ALI1535_SMBIO_EN) == 0) {
  dev_err(&dev->dev, "SMB device not enabled - upgrade BIOS?\n");
  retval = -ENODEV;
  goto exit_free;
 }


 pci_read_config_byte(dev, SMBHSTCFG, &temp);
 if ((temp & 1) == 0) {
  dev_err(&dev->dev, "SMBus controller not enabled - upgrade BIOS?\n");
  retval = -ENODEV;
  goto exit_free;
 }


 pci_write_config_byte(dev, SMBCLK, 0x20);
 pci_read_config_byte(dev, SMBREV, &temp);
 dev_dbg(&dev->dev, "SMBREV = 0x%X\n", temp);
 dev_dbg(&dev->dev, "ALI1535_smba = 0x%lx\n", ali1535_smba);

 return 0;

exit_free:
 release_region(ali1535_smba, ALI1535_SMB_IOSIZE);
exit:
 return retval;
}
