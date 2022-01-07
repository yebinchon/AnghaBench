
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct k8temp_data {int swap_core_select; int temp_offset; int sensorsp; int update_lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int x86_model; int x86_stepping; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int REG_TEMP ;
 int SEL_CORE ;
 int SEL_PLACE ;
 TYPE_1__ boot_cpu_data ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct device* devm_hwmon_device_register_with_info (int *,char*,struct k8temp_data*,int *,int *) ;
 struct k8temp_data* devm_kzalloc (int *,int,int ) ;
 scalar_t__ is_rev_g_desktop (int) ;
 int k8temp_chip_info ;
 int mutex_init (int *) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static int k8temp_probe(struct pci_dev *pdev,
      const struct pci_device_id *id)
{
 u8 scfg;
 u32 temp;
 u8 model, stepping;
 struct k8temp_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(&pdev->dev, sizeof(struct k8temp_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 model = boot_cpu_data.x86_model;
 stepping = boot_cpu_data.x86_stepping;


 if ((model == 4 && stepping == 0) ||
     (model == 5 && stepping <= 1))
  return -ENODEV;





 if (model >= 0x40) {
  data->swap_core_select = 1;
  dev_warn(&pdev->dev,
    "Temperature readouts might be wrong - check erratum #141\n");
 }






 if (is_rev_g_desktop(model))
  data->temp_offset = 21000;

 pci_read_config_byte(pdev, REG_TEMP, &scfg);
 scfg &= ~(SEL_PLACE | SEL_CORE);
 pci_write_config_byte(pdev, REG_TEMP, scfg);
 pci_read_config_byte(pdev, REG_TEMP, &scfg);

 if (scfg & (SEL_PLACE | SEL_CORE)) {
  dev_err(&pdev->dev, "Configuration bit(s) stuck at 1!\n");
  return -ENODEV;
 }

 scfg |= (SEL_PLACE | SEL_CORE);
 pci_write_config_byte(pdev, REG_TEMP, scfg);


 pci_read_config_byte(pdev, REG_TEMP, &data->sensorsp);

 if (data->sensorsp & SEL_PLACE) {
  scfg &= ~SEL_CORE;
  pci_write_config_byte(pdev, REG_TEMP, scfg);
  pci_read_config_dword(pdev, REG_TEMP, &temp);
  scfg |= SEL_CORE;
  if (!((temp >> 16) & 0xff))
   data->sensorsp &= ~SEL_PLACE;
 }

 if (data->sensorsp & SEL_CORE) {
  scfg &= ~SEL_PLACE;
  pci_write_config_byte(pdev, REG_TEMP, scfg);
  pci_read_config_dword(pdev, REG_TEMP, &temp);
  if (!((temp >> 16) & 0xff))
   data->sensorsp &= ~SEL_CORE;
 }

 mutex_init(&data->update_lock);

 hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
        "k8temp",
        data,
        &k8temp_chip_info,
        ((void*)0));

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
