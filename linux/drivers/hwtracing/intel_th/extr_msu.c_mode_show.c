
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msc {size_t mode; int buf_mutex; TYPE_1__* mbuf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int PAGE_SIZE ;
 struct msc* dev_get_drvdata (struct device*) ;
 char** msc_mode ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t
mode_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct msc *msc = dev_get_drvdata(dev);
 const char *mode = msc_mode[msc->mode];
 ssize_t ret;

 mutex_lock(&msc->buf_mutex);
 if (msc->mbuf)
  mode = msc->mbuf->name;
 ret = scnprintf(buf, PAGE_SIZE, "%s\n", mode);
 mutex_unlock(&msc->buf_mutex);

 return ret;
}
