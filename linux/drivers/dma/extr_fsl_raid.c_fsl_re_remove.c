
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fsl_re_drv_private {int total_chans; int dma_dev; int * re_jrs; } ;


 struct fsl_re_drv_private* dev_get_drvdata (struct device*) ;
 int dma_async_device_unregister (int *) ;
 int fsl_re_remove_chan (int ) ;

__attribute__((used)) static int fsl_re_remove(struct platform_device *ofdev)
{
 struct fsl_re_drv_private *re_priv;
 struct device *dev;
 int i;

 dev = &ofdev->dev;
 re_priv = dev_get_drvdata(dev);


 for (i = 0; i < re_priv->total_chans; i++)
  fsl_re_remove_chan(re_priv->re_jrs[i]);


 dma_async_device_unregister(&re_priv->dma_dev);

 return 0;
}
