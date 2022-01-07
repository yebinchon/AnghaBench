
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;


 int IPOIB_FLAG_INITIALIZED ;
 int ipoib_cm_dev_open (struct net_device*) ;
 int ipoib_ib_post_receives (struct net_device*) ;
 int ipoib_init_qp (struct net_device*) ;
 int ipoib_napi_enable (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int test_bit (int ,int *) ;

int ipoib_ib_dev_open_default(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;

 ret = ipoib_init_qp(dev);
 if (ret) {
  ipoib_warn(priv, "ipoib_init_qp returned %d\n", ret);
  return -1;
 }

 ret = ipoib_ib_post_receives(dev);
 if (ret) {
  ipoib_warn(priv, "ipoib_ib_post_receives returned %d\n", ret);
  goto out;
 }

 ret = ipoib_cm_dev_open(dev);
 if (ret) {
  ipoib_warn(priv, "ipoib_cm_dev_open returned %d\n", ret);
  goto out;
 }

 if (!test_bit(IPOIB_FLAG_INITIALIZED, &priv->flags))
  ipoib_napi_enable(dev);

 return 0;
out:
 return -1;
}
