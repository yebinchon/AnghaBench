
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stts751_priv {int therm_trip; int access_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct stts751_priv* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int stts751_update (struct stts751_priv*) ;

__attribute__((used)) static ssize_t therm_trip_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 int ret;
 struct stts751_priv *priv = dev_get_drvdata(dev);

 mutex_lock(&priv->access_lock);
 ret = stts751_update(priv);
 mutex_unlock(&priv->access_lock);
 if (ret < 0)
  return ret;

 return snprintf(buf, PAGE_SIZE, "%d\n", priv->therm_trip);
}
