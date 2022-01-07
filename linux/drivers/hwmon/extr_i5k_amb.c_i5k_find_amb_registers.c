
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct pci_dev {int dev; } ;
struct i5k_amb_data {int amb_len; void* amb_base; } ;


 int AMB_CONFIG_SIZE ;
 int ENODEV ;
 int I5K_REG_AMB_BASE_ADDR ;
 int I5K_REG_AMB_LEN_ADDR ;
 int MAX_AMBS ;
 int PCI_VENDOR_ID_INTEL ;
 int dev_err (int *,char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,unsigned long,int *) ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,void**) ;

__attribute__((used)) static int i5k_find_amb_registers(struct i5k_amb_data *data,
         unsigned long devid)
{
 struct pci_dev *pcidev;
 u32 val32;
 int res = -ENODEV;


 pcidev = pci_get_device(PCI_VENDOR_ID_INTEL,
    devid,
    ((void*)0));
 if (!pcidev)
  return -ENODEV;

 if (pci_read_config_dword(pcidev, I5K_REG_AMB_BASE_ADDR, &val32))
  goto out;
 data->amb_base = val32;

 if (pci_read_config_dword(pcidev, I5K_REG_AMB_LEN_ADDR, &val32))
  goto out;
 data->amb_len = val32;


 if (data->amb_len < AMB_CONFIG_SIZE * MAX_AMBS) {
  dev_err(&pcidev->dev, "AMB region too small!\n");
  goto out;
 }

 res = 0;
out:
 pci_dev_put(pcidev);
 return res;
}
