
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int HMC5843_MODE_SLEEP ;
 int dev_get_drvdata (struct device*) ;
 int hmc5843_set_mode (int ,int ) ;
 int iio_priv (int ) ;

int hmc5843_common_suspend(struct device *dev)
{
 return hmc5843_set_mode(iio_priv(dev_get_drvdata(dev)),
    HMC5843_MODE_SLEEP);
}
