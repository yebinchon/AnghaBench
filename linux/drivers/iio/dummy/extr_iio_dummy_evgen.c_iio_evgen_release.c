
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int iio_dummy_evgen_free () ;

__attribute__((used)) static void iio_evgen_release(struct device *dev)
{
 iio_dummy_evgen_free();
}
