
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_demux_pinctrl_priv {unsigned int num_chan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct i2c_demux_pinctrl_priv* dev_get_drvdata (struct device*) ;
 int i2c_demux_change_master (struct i2c_demux_pinctrl_priv*,unsigned int) ;
 int kstrtouint (char const*,int ,unsigned int*) ;

__attribute__((used)) static ssize_t current_master_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_demux_pinctrl_priv *priv = dev_get_drvdata(dev);
 unsigned int val;
 int ret;

 ret = kstrtouint(buf, 0, &val);
 if (ret < 0)
  return ret;

 if (val >= priv->num_chan)
  return -EINVAL;

 ret = i2c_demux_change_master(priv, val);

 return ret < 0 ? ret : count;
}
