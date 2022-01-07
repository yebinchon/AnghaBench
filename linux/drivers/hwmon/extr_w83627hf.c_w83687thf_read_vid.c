
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {int dummy; } ;
struct platform_device {int dev; } ;


 int W83627HF_LD_HWM ;
 int W83687THF_VID_CFG ;
 int W83687THF_VID_DATA ;
 int W83687THF_VID_EN ;
 int dev_dbg (int *,char*) ;
 struct w83627hf_sio_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*) ;
 scalar_t__ superio_enter (struct w83627hf_sio_data*) ;
 int superio_exit (struct w83627hf_sio_data*) ;
 int superio_inb (struct w83627hf_sio_data*,int ) ;
 int superio_select (struct w83627hf_sio_data*,int ) ;

__attribute__((used)) static int w83687thf_read_vid(struct platform_device *pdev)
{
 struct w83627hf_sio_data *sio_data = dev_get_platdata(&pdev->dev);
 int res = 0xff;

 if (superio_enter(sio_data)) {





  dev_warn(&pdev->dev,
    "Can not read VID data: Failed to enable SuperIO access\n");
  return res;
 }

 superio_select(sio_data, W83627HF_LD_HWM);


 if (!(superio_inb(sio_data, W83687THF_VID_EN) & (1 << 2))) {
  dev_dbg(&pdev->dev, "VID disabled, no VID function\n");
  goto exit;
 }


 if (!(superio_inb(sio_data, W83687THF_VID_CFG) & (1 << 4))) {
  dev_dbg(&pdev->dev, "VID configured as output, "
   "no VID function\n");
  goto exit;
 }

 res = superio_inb(sio_data, W83687THF_VID_DATA) & 0x3f;

exit:
 superio_exit(sio_data);
 return res;
}
