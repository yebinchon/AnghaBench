
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_aes_dev {TYPE_2__* engine; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int max_qlen; } ;
struct TYPE_4__ {TYPE_1__ queue; } ;


 struct omap_aes_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t queue_len_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct omap_aes_dev *dd = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", dd->engine->queue.max_qlen);
}
