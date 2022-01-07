
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g762_data {unsigned long clk_freq; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct g762_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int do_set_clk_freq(struct device *dev, unsigned long val)
{
 struct g762_data *data = dev_get_drvdata(dev);

 if (val > 0xffffff)
  return -EINVAL;
 if (!val)
  val = 32768;

 data->clk_freq = val;

 return 0;
}
