
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_qlen; } ;
struct omap_sham_dev {TYPE_1__ queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct omap_sham_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t queue_len_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct omap_sham_dev *dd = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", dd->queue.max_qlen);
}
