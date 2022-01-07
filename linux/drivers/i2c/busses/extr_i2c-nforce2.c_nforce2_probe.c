
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int dev; } ;
struct nforce2_smbus {int blockops; int can_abort; int adapter; scalar_t__ base; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int NFORCE_PCI_SMB1 ;
 int NFORCE_PCI_SMB2 ;



 int dev_err (int *,char*) ;
 scalar_t__ dmi_check_system (int ) ;
 struct nforce2_smbus* kcalloc (int,int,int ) ;
 int kfree (struct nforce2_smbus*) ;
 int nforce2_dmi_blacklist2 ;
 int nforce2_probe_smb (struct pci_dev*,int,int ,struct nforce2_smbus*,char*) ;
 int nforce2_set_reference (int *) ;
 int pci_set_drvdata (struct pci_dev*,struct nforce2_smbus*) ;

__attribute__((used)) static int nforce2_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct nforce2_smbus *smbuses;
 int res1, res2;


 smbuses = kcalloc(2, sizeof(struct nforce2_smbus), GFP_KERNEL);
 if (!smbuses)
  return -ENOMEM;
 pci_set_drvdata(dev, smbuses);

 switch (dev->device) {
 case 130:
 case 129:
 case 128:
  smbuses[0].blockops = 1;
  smbuses[1].blockops = 1;
  smbuses[0].can_abort = 1;
  smbuses[1].can_abort = 1;
 }


 res1 = nforce2_probe_smb(dev, 4, NFORCE_PCI_SMB1, &smbuses[0], "SMB1");
 if (res1 < 0)
  smbuses[0].base = 0;


 if (dmi_check_system(nforce2_dmi_blacklist2)) {
  dev_err(&dev->dev, "Disabling SMB2 for safety reasons.\n");
  res2 = -EPERM;
  smbuses[1].base = 0;
 } else {
  res2 = nforce2_probe_smb(dev, 5, NFORCE_PCI_SMB2, &smbuses[1],
      "SMB2");
  if (res2 < 0)
   smbuses[1].base = 0;
 }

 if ((res1 < 0) && (res2 < 0)) {

  kfree(smbuses);
  return -ENODEV;
 }

 nforce2_set_reference(&smbuses[0].adapter);
 return 0;
}
