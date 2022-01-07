
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ I3200_CAPID0 ;
 int edac_dbg (int ,char*) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,unsigned char*) ;

__attribute__((used)) static int how_many_channels(struct pci_dev *pdev)
{
 int n_channels;

 unsigned char capid0_8b;

 pci_read_config_byte(pdev, I3200_CAPID0 + 8, &capid0_8b);

 if (capid0_8b & 0x20) {
  edac_dbg(0, "In single channel mode\n");
  n_channels = 1;
 } else {
  edac_dbg(0, "In dual channel mode\n");
  n_channels = 2;
 }

 if (capid0_8b & 0x10)
  edac_dbg(0, "2 DIMMS per channel disabled\n");
 else
  edac_dbg(0, "2 DIMMS per channel enabled\n");

 return n_channels;
}
