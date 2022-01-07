
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau7802_state {int * scale_avail; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct nau7802_state* iio_priv (int ) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ) ;

__attribute__((used)) static ssize_t nau7802_show_scales(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct nau7802_state *st = iio_priv(dev_to_iio_dev(dev));
 int i, len = 0;

 for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
  len += scnprintf(buf + len, PAGE_SIZE - len, "0.%09d ",
     st->scale_avail[i]);

 buf[len-1] = '\n';

 return len;
}
