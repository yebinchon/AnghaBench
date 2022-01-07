
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stts751_priv {int hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct stts751_priv* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t hyst_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct stts751_priv *priv = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", priv->hyst);
}
