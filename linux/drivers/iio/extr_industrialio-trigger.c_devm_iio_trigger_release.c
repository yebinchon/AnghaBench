
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct device {int dummy; } ;


 int iio_trigger_free (struct iio_trigger*) ;

__attribute__((used)) static void devm_iio_trigger_release(struct device *dev, void *res)
{
 iio_trigger_free(*(struct iio_trigger **)res);
}
