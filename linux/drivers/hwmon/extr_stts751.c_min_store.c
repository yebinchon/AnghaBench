
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stts751_priv {long event_min; int access_lock; TYPE_1__* client; int event_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int STTS751_REG_LLIM_H ;
 int STTS751_REG_LLIM_L ;
 long clamp_val (long,int,int ) ;
 int dev_dbg (int *,char*,long) ;
 struct stts751_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stts751_set_temp_reg16 (struct stts751_priv*,long,int ,int ) ;

__attribute__((used)) static ssize_t min_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 int ret;
 long temp;
 struct stts751_priv *priv = dev_get_drvdata(dev);

 if (kstrtol(buf, 10, &temp) < 0)
  return -EINVAL;

 mutex_lock(&priv->access_lock);

 temp = clamp_val(temp, -64000, priv->event_max);
 ret = stts751_set_temp_reg16(priv, temp,
         STTS751_REG_LLIM_H, STTS751_REG_LLIM_L);
 if (ret)
  goto exit;

 dev_dbg(&priv->client->dev, "setting event min %ld", temp);
 priv->event_min = temp;
 ret = count;
exit:
 mutex_unlock(&priv->access_lock);
 return ret;
}
