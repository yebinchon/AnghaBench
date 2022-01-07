
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct k8temp_data {int swap_core_select; long temp_offset; int update_lock; } ;
struct device {int parent; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int REG_TEMP ;
 int SEL_CORE ;
 int SEL_PLACE ;
 long TEMP_FROM_REG (int ) ;
 struct k8temp_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int
k8temp_read(struct device *dev, enum hwmon_sensor_types type,
     u32 attr, int channel, long *val)
{
 struct k8temp_data *data = dev_get_drvdata(dev);
 struct pci_dev *pdev = to_pci_dev(dev->parent);
 int core, place;
 u32 temp;
 u8 tmp;

 core = (channel >> 1) & 1;
 place = channel & 1;

 core ^= data->swap_core_select;

 mutex_lock(&data->update_lock);
 pci_read_config_byte(pdev, REG_TEMP, &tmp);
 tmp &= ~(SEL_PLACE | SEL_CORE);
 if (core)
  tmp |= SEL_CORE;
 if (place)
  tmp |= SEL_PLACE;
 pci_write_config_byte(pdev, REG_TEMP, tmp);
 pci_read_config_dword(pdev, REG_TEMP, &temp);
 mutex_unlock(&data->update_lock);

 *val = TEMP_FROM_REG(temp) + data->temp_offset;

 return 0;
}
