
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int restart_task; int wq; int flags; } ;


 int IPOIB_FLAG_OPER_UP ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ipoib_set_mcast_list(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 if (!test_bit(IPOIB_FLAG_OPER_UP, &priv->flags)) {
  ipoib_dbg(priv, "IPOIB_FLAG_OPER_UP not set");
  return;
 }

 queue_work(priv->wq, &priv->restart_task);
}
