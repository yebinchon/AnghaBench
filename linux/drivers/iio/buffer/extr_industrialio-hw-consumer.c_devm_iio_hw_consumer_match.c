
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void iio_hw_consumer ;
struct device {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int devm_iio_hw_consumer_match(struct device *dev, void *res, void *data)
{
 struct iio_hw_consumer **r = res;

 if (!r || !*r) {
  WARN_ON(!r || !*r);
  return 0;
 }
 return *r == data;
}
