
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpi_firmware {int dummy; } ;
struct device {int dummy; } ;
typedef int packet ;


 int RPI_FIRMWARE_GET_THROTTLED ;
 int platform_device_register_data (struct device*,char*,int,int *,int ) ;
 int rpi_firmware_property (struct rpi_firmware*,int ,int *,int) ;
 int rpi_hwmon ;

__attribute__((used)) static void
rpi_register_hwmon_driver(struct device *dev, struct rpi_firmware *fw)
{
 u32 packet;
 int ret = rpi_firmware_property(fw, RPI_FIRMWARE_GET_THROTTLED,
     &packet, sizeof(packet));

 if (ret)
  return;

 rpi_hwmon = platform_device_register_data(dev, "raspberrypi-hwmon",
        -1, ((void*)0), 0);
}
