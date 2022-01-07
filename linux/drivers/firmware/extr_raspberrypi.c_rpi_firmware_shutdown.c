
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_firmware {int dummy; } ;
struct platform_device {int dummy; } ;


 int RPI_FIRMWARE_NOTIFY_REBOOT ;
 struct rpi_firmware* platform_get_drvdata (struct platform_device*) ;
 int rpi_firmware_property (struct rpi_firmware*,int ,int *,int ) ;

__attribute__((used)) static void rpi_firmware_shutdown(struct platform_device *pdev)
{
 struct rpi_firmware *fw = platform_get_drvdata(pdev);

 if (!fw)
  return;

 rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_REBOOT, ((void*)0), 0);
}
