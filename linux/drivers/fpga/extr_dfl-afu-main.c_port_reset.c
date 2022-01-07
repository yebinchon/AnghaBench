
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int lock; } ;


 int __port_reset (struct platform_device*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int port_reset(struct platform_device *pdev)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);
 int ret;

 mutex_lock(&pdata->lock);
 ret = __port_reset(pdev);
 mutex_unlock(&pdata->lock);

 return ret;
}
