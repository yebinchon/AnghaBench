
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int lna; int vcc; scalar_t__ on_off; } ;
struct device {int dummy; } ;


 struct sirf_data* dev_get_drvdata (struct device*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int sirf_set_active (struct sirf_data*,int) ;

__attribute__((used)) static int sirf_runtime_resume(struct device *dev)
{
 struct sirf_data *data = dev_get_drvdata(dev);
 int ret;

 ret = regulator_enable(data->lna);
 if (ret)
  return ret;

 if (data->on_off)
  ret = sirf_set_active(data, 1);
 else
  ret = regulator_enable(data->vcc);

 if (ret)
  goto err_disable_lna;

 return 0;

err_disable_lna:
 regulator_disable(data->lna);

 return ret;
}
