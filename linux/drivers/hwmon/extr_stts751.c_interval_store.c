
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stts751_priv {int interval; int access_lock; TYPE_1__* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int STTS751_REG_RATE ;
 int dev_dbg (int *,char*,...) ;
 struct stts751_priv* dev_get_drvdata (struct device*) ;
 int find_closest_descending (unsigned long,int *,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stts751_adjust_resolution (struct stts751_priv*) ;
 int * stts751_intervals ;

__attribute__((used)) static ssize_t interval_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 unsigned long val;
 int idx;
 int ret = count;
 struct stts751_priv *priv = dev_get_drvdata(dev);

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;

 idx = find_closest_descending(val, stts751_intervals,
          ARRAY_SIZE(stts751_intervals));

 dev_dbg(&priv->client->dev, "setting interval. req:%lu, idx: %d, val: %d",
  val, idx, stts751_intervals[idx]);

 mutex_lock(&priv->access_lock);
 if (priv->interval == idx)
  goto exit;
 if (priv->interval < idx) {
  dev_dbg(&priv->client->dev, "lower resolution, then modify convrate");
  priv->interval = idx;
  ret = stts751_adjust_resolution(priv);
  if (ret)
   goto exit;
 }

 ret = i2c_smbus_write_byte_data(priv->client, STTS751_REG_RATE, idx);
 if (ret)
  goto exit;

 if (priv->interval != idx) {
  dev_dbg(&priv->client->dev, "modify convrate, then raise resolution");
  priv->interval = idx;
  ret = stts751_adjust_resolution(priv);
  if (ret)
   goto exit;
 }
 ret = count;
exit:
 mutex_unlock(&priv->access_lock);

 return ret;
}
