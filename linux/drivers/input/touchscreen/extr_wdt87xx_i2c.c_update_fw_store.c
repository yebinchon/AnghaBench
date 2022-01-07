
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CHUNK_ID_FRWR ;
 int WDT87XX_FW_NAME ;
 int wdt87xx_update_firmware (struct device*,int ,int ) ;

__attribute__((used)) static ssize_t update_fw_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 int error;

 error = wdt87xx_update_firmware(dev, WDT87XX_FW_NAME, CHUNK_ID_FRWR);

 return error ? error : count;
}
