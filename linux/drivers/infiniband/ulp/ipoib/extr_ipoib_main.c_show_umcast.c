
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IPOIB_FLAG_UMCAST ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int sprintf (char*,char*,int) ;
 int test_bit (int ,int *) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t show_umcast(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct net_device *ndev = to_net_dev(dev);
 struct ipoib_dev_priv *priv = ipoib_priv(ndev);

 return sprintf(buf, "%d\n", test_bit(IPOIB_FLAG_UMCAST, &priv->flags));
}
