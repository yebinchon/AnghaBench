
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hmc5843_data {TYPE_1__* variant; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int n_regval_to_samp_freq; int ** regval_to_samp_freq; } ;


 scalar_t__ PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct hmc5843_data* iio_priv (int ) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ,int ) ;

__attribute__((used)) static
ssize_t hmc5843_show_samp_freq_avail(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct hmc5843_data *data = iio_priv(dev_to_iio_dev(dev));
 size_t len = 0;
 int i;

 for (i = 0; i < data->variant->n_regval_to_samp_freq; i++)
  len += scnprintf(buf + len, PAGE_SIZE - len,
   "%d.%d ", data->variant->regval_to_samp_freq[i][0],
   data->variant->regval_to_samp_freq[i][1]);


 buf[len - 1] = '\n';

 return len;
}
