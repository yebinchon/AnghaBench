
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {scalar_t__ mode; int buf_mutex; scalar_t__ mbuf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ MSC_MODE_MULTI ;
 struct msc* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int msc_win_switch (struct msc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t
win_switch_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t size)
{
 struct msc *msc = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 if (val != 1)
  return -EINVAL;

 mutex_lock(&msc->buf_mutex);





 if (msc->mode != MSC_MODE_MULTI || msc->mbuf)
  ret = -ENOTSUPP;
 else
  msc_win_switch(msc);
 mutex_unlock(&msc->buf_mutex);

 return ret ? ret : size;
}
