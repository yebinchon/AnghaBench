
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stts751_priv {long therm; int access_lock; scalar_t__ hyst; TYPE_1__* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int STTS751_REG_TLIM ;
 long clamp_val (long,int,int) ;
 int dev_dbg (int *,char*,long) ;
 struct stts751_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stts751_set_temp_reg8 (struct stts751_priv*,long,int ) ;

__attribute__((used)) static ssize_t therm_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 int ret;
 long temp;
 struct stts751_priv *priv = dev_get_drvdata(dev);

 if (kstrtol(buf, 10, &temp) < 0)
  return -EINVAL;


 temp = clamp_val(temp, -64000, 127937);
 mutex_lock(&priv->access_lock);
 ret = stts751_set_temp_reg8(priv, temp, STTS751_REG_TLIM);
 if (ret)
  goto exit;

 dev_dbg(&priv->client->dev, "setting therm %ld", temp);





 priv->hyst = temp - (priv->therm - priv->hyst);
 priv->therm = temp;

exit:
 mutex_unlock(&priv->access_lock);
 if (ret)
  return ret;

 return count;
}
