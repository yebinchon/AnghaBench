
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* parent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int sprintf (char*,char*,char*) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t show_parent(struct device *d, struct device_attribute *attr,
      char *buf)
{
 struct net_device *dev = to_net_dev(d);
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 return sprintf(buf, "%s\n", priv->parent->name);
}
