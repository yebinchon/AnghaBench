
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_netdev {int (* detach_mcast ) (struct net_device*,int ,TYPE_2__*,int ) ;} ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int mlid; TYPE_2__ mgid; } ;
struct ipoib_mcast {int flags; TYPE_1__ mcmember; int mc; } ;
struct ipoib_dev_priv {int ca; } ;


 int IPOIB_MCAST_FLAG_ATTACHED ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int IPOIB_MCAST_FLAG_SENDONLY ;
 int IS_ERR_OR_NULL (int ) ;
 int be16_to_cpu (int ) ;
 int ib_sa_free_multicast (int ) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,...) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int ,TYPE_2__*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_mcast_leave(struct net_device *dev, struct ipoib_mcast *mcast)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct rdma_netdev *rn = netdev_priv(dev);
 int ret = 0;

 if (test_and_clear_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
  ipoib_warn(priv, "ipoib_mcast_leave on an in-flight join\n");

 if (!IS_ERR_OR_NULL(mcast->mc))
  ib_sa_free_multicast(mcast->mc);

 if (test_and_clear_bit(IPOIB_MCAST_FLAG_ATTACHED, &mcast->flags)) {
  ipoib_dbg_mcast(priv, "leaving MGID %pI6\n",
    mcast->mcmember.mgid.raw);


  ret = rn->detach_mcast(dev, priv->ca, &mcast->mcmember.mgid,
           be16_to_cpu(mcast->mcmember.mlid));
  if (ret)
   ipoib_warn(priv, "ib_detach_mcast failed (result = %d)\n", ret);
 } else if (!test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags))
  ipoib_dbg(priv, "leaving with no mcmember but not a "
     "SENDONLY join\n");

 return 0;
}
