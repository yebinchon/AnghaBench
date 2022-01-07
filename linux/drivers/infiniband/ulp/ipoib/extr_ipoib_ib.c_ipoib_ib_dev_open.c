
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct ipoib_dev_priv {int pkey; int flags; int ah_reap_task; TYPE_1__* rn_ops; int wq; } ;
struct TYPE_2__ {scalar_t__ (* ndo_open ) (struct net_device*) ;} ;


 int HZ ;
 int IPOIB_FLAG_INITIALIZED ;
 int IPOIB_PKEY_ASSIGNED ;
 int IPOIB_STOP_REAPER ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int ipoib_ib_dev_stop (struct net_device*) ;
 int ipoib_pkey_dev_check_presence (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,char*) ;
 int pr_warn (char*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ stub1 (struct net_device*) ;
 int test_bit (int ,int *) ;

int ipoib_ib_dev_open(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ipoib_pkey_dev_check_presence(dev);

 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
  ipoib_warn(priv, "P_Key 0x%04x is %s\n", priv->pkey,
      (!(priv->pkey & 0x7fff) ? "Invalid" : "not found"));
  return -1;
 }

 clear_bit(IPOIB_STOP_REAPER, &priv->flags);
 queue_delayed_work(priv->wq, &priv->ah_reap_task,
      round_jiffies_relative(HZ));

 if (priv->rn_ops->ndo_open(dev)) {
  pr_warn("%s: Failed to open dev\n", dev->name);
  goto dev_stop;
 }

 set_bit(IPOIB_FLAG_INITIALIZED, &priv->flags);

 return 0;

dev_stop:
 set_bit(IPOIB_STOP_REAPER, &priv->flags);
 cancel_delayed_work(&priv->ah_reap_task);
 set_bit(IPOIB_FLAG_INITIALIZED, &priv->flags);
 ipoib_ib_dev_stop(dev);
 return -1;
}
