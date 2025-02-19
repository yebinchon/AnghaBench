
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct device {int dummy; } ;
typedef int s8 ;


 int ENODEV ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int REG_TSFSC ;
 int REG_TSTIMER ;
 int dev_err (int *,char*) ;
 int dev_notice (int *,char*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,char*,int *,int ) ;
 int i5500_temp_groups ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int i5500_temp_probe(struct pci_dev *pdev,
       const struct pci_device_id *id)
{
 int err;
 struct device *hwmon_dev;
 u32 tstimer;
 s8 tsfsc;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to enable device\n");
  return err;
 }

 pci_read_config_byte(pdev, REG_TSFSC, &tsfsc);
 pci_read_config_dword(pdev, REG_TSTIMER, &tstimer);
 if (tsfsc == 0x7F && tstimer == 0x07D30D40) {
  dev_notice(&pdev->dev, "Sensor seems to be disabled\n");
  return -ENODEV;
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(&pdev->dev,
          "intel5500", ((void*)0),
          i5500_temp_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
