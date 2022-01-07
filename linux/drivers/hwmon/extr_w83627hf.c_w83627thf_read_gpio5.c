
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {int dummy; } ;
struct platform_device {int dev; } ;


 int W83627HF_LD_GPIO5 ;
 int W83627THF_GPIO5_DR ;
 int W83627THF_GPIO5_EN ;
 int W83627THF_GPIO5_IOSR ;
 int dev_dbg (int *,char*) ;
 struct w83627hf_sio_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ superio_enter (struct w83627hf_sio_data*) ;
 int superio_exit (struct w83627hf_sio_data*) ;
 int superio_inb (struct w83627hf_sio_data*,int ) ;
 int superio_select (struct w83627hf_sio_data*,int ) ;

__attribute__((used)) static int w83627thf_read_gpio5(struct platform_device *pdev)
{
 struct w83627hf_sio_data *sio_data = dev_get_platdata(&pdev->dev);
 int res = 0xff, sel;

 if (superio_enter(sio_data)) {





  dev_warn(&pdev->dev,
    "Can not read VID data: Failed to enable SuperIO access\n");
  return res;
 }

 superio_select(sio_data, W83627HF_LD_GPIO5);

 res = 0xff;


 if (!(superio_inb(sio_data, W83627THF_GPIO5_EN) & (1<<3))) {
  dev_dbg(&pdev->dev, "GPIO5 disabled, no VID function\n");
  goto exit;
 }





 sel = superio_inb(sio_data, W83627THF_GPIO5_IOSR) & 0x3f;
 if ((sel & 0x1f) != 0x1f) {
  dev_dbg(&pdev->dev, "GPIO5 not configured for VID "
   "function\n");
  goto exit;
 }

 dev_info(&pdev->dev, "Reading VID from GPIO5\n");
 res = superio_inb(sio_data, W83627THF_GPIO5_DR) & sel;

exit:
 superio_exit(sio_data);
 return res;
}
