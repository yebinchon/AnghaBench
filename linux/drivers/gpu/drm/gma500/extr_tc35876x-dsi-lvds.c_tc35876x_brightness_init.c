
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GPIOPWMCTRL ;
 int PWM0CLKDIV0 ;
 int PWM0CLKDIV1 ;
 int PWM_FREQUENCY ;
 int SYSTEMCLK ;
 int calc_clkdiv (int ,int ) ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int intel_scu_ipc_ioread8 (int ,int*) ;
 int intel_scu_ipc_iowrite8 (int ,int) ;

__attribute__((used)) static void tc35876x_brightness_init(struct drm_device *dev)
{
 int ret;
 u8 pwmctrl;
 u16 clkdiv;




 ret = intel_scu_ipc_ioread8(GPIOPWMCTRL, &pwmctrl);
 if (ret || pwmctrl != 0x01) {
  if (ret)
   dev_err(&dev->pdev->dev, "GPIOPWMCTRL read failed\n");
  else
   dev_warn(&dev->pdev->dev, "GPIOPWMCTRL was not set to system clock (pwmctrl = 0x%02x)\n", pwmctrl);

  ret = intel_scu_ipc_iowrite8(GPIOPWMCTRL, 0x01);
  if (ret)
   dev_err(&dev->pdev->dev, "GPIOPWMCTRL set failed\n");
 }

 clkdiv = calc_clkdiv(SYSTEMCLK, PWM_FREQUENCY);

 ret = intel_scu_ipc_iowrite8(PWM0CLKDIV1, (clkdiv >> 8) & 0xff);
 if (!ret)
  ret = intel_scu_ipc_iowrite8(PWM0CLKDIV0, clkdiv & 0xff);

 if (ret)
  dev_err(&dev->pdev->dev, "PWM0CLKDIV set failed\n");
 else
  dev_dbg(&dev->pdev->dev, "PWM0CLKDIV set to 0x%04x (%d Hz)\n",
   clkdiv, PWM_FREQUENCY);
}
