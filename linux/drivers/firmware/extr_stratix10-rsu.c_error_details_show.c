
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_details; } ;
struct stratix10_rsu_priv {TYPE_1__ status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct stratix10_rsu_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t error_details_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct stratix10_rsu_priv *priv = dev_get_drvdata(dev);

 if (!priv)
  return -ENODEV;

 return sprintf(buf, "0x%08x\n", priv->status.error_details);
}
