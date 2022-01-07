
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_firmware {int chan; } ;
struct platform_device {int dummy; } ;


 int mbox_free_channel (int ) ;
 int platform_device_unregister (int *) ;
 struct rpi_firmware* platform_get_drvdata (struct platform_device*) ;
 int * rpi_clk ;
 int * rpi_hwmon ;

__attribute__((used)) static int rpi_firmware_remove(struct platform_device *pdev)
{
 struct rpi_firmware *fw = platform_get_drvdata(pdev);

 platform_device_unregister(rpi_hwmon);
 rpi_hwmon = ((void*)0);
 platform_device_unregister(rpi_clk);
 rpi_clk = ((void*)0);
 mbox_free_channel(fw->chan);

 return 0;
}
