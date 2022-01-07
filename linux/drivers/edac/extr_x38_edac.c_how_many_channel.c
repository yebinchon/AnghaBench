
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ X38_CAPID0 ;
 int edac_dbg (int ,char*) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,unsigned char*) ;
 int x38_channel_num ;

__attribute__((used)) static int how_many_channel(struct pci_dev *pdev)
{
 unsigned char capid0_8b;

 pci_read_config_byte(pdev, X38_CAPID0 + 8, &capid0_8b);
 if (capid0_8b & 0x20) {
  edac_dbg(0, "In single channel mode\n");
  x38_channel_num = 1;
 } else {
  edac_dbg(0, "In dual channel mode\n");
  x38_channel_num = 2;
 }

 return x38_channel_num;
}
