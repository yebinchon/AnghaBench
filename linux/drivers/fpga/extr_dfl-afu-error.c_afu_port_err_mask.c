
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_platform_data {int lock; } ;
struct device {int dummy; } ;


 int __afu_port_err_mask (struct device*,int) ;
 struct dfl_feature_platform_data* dev_get_platdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void afu_port_err_mask(struct device *dev, bool mask)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(dev);

 mutex_lock(&pdata->lock);
 __afu_port_err_mask(dev, mask);
 mutex_unlock(&pdata->lock);
}
