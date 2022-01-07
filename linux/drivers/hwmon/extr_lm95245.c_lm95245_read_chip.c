
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm95245_data {long interval; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 struct lm95245_data* dev_get_drvdata (struct device*) ;


__attribute__((used)) static int lm95245_read_chip(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct lm95245_data *data = dev_get_drvdata(dev);

 switch (attr) {
 case 128:
  *val = data->interval;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
