
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int lock; } ;


 int __afu_port_disable (struct platform_device*) ;
 int __afu_port_enable (struct platform_device*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int port_enable_set(struct platform_device *pdev, bool enable)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);
 int ret = 0;

 mutex_lock(&pdata->lock);
 if (enable)
  __afu_port_enable(pdev);
 else
  ret = __afu_port_disable(pdev);
 mutex_unlock(&pdata->lock);

 return ret;
}
