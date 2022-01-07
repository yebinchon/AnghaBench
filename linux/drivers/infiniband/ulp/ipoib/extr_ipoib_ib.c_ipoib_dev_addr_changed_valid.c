
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ interface_id; int subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {scalar_t__ interface_id; int subnet_prefix; } ;
struct TYPE_9__ {TYPE_2__ global; } ;
struct ipoib_dev_priv {scalar_t__ port; TYPE_3__* dev; TYPE_5__ local_gid; int flags; int ca; } ;
struct TYPE_8__ {TYPE_5__* dev_addr; } ;


 int IPOIB_FLAG_DEV_ADDR_CTRL ;
 int IPOIB_FLAG_DEV_ADDR_SET ;
 int clear_bit (int ,int *) ;
 int ib_find_gid (int ,union ib_gid*,scalar_t__*,scalar_t__*) ;
 int memcpy (TYPE_5__*,union ib_gid*,int) ;
 int netif_addr_lock_bh (TYPE_3__*) ;
 int netif_addr_unlock_bh (TYPE_3__*) ;
 scalar_t__ rdma_query_gid (int ,scalar_t__,int ,union ib_gid*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool ipoib_dev_addr_changed_valid(struct ipoib_dev_priv *priv)
{
 union ib_gid search_gid;
 union ib_gid gid0;
 union ib_gid *netdev_gid;
 int err;
 u16 index;
 u8 port;
 bool ret = 0;

 netdev_gid = (union ib_gid *)(priv->dev->dev_addr + 4);
 if (rdma_query_gid(priv->ca, priv->port, 0, &gid0))
  return 0;

 netif_addr_lock_bh(priv->dev);




 priv->local_gid.global.subnet_prefix = gid0.global.subnet_prefix;
 netdev_gid->global.subnet_prefix = gid0.global.subnet_prefix;
 search_gid.global.subnet_prefix = gid0.global.subnet_prefix;

 search_gid.global.interface_id = priv->local_gid.global.interface_id;

 netif_addr_unlock_bh(priv->dev);

 err = ib_find_gid(priv->ca, &search_gid, &port, &index);

 netif_addr_lock_bh(priv->dev);

 if (search_gid.global.interface_id !=
     priv->local_gid.global.interface_id)



  goto out;
 if (!test_bit(IPOIB_FLAG_DEV_ADDR_SET, &priv->flags)) {
  if (!err && port == priv->port) {
   set_bit(IPOIB_FLAG_DEV_ADDR_SET, &priv->flags);
   if (index == 0)
    clear_bit(IPOIB_FLAG_DEV_ADDR_CTRL,
       &priv->flags);
   else
    set_bit(IPOIB_FLAG_DEV_ADDR_CTRL, &priv->flags);
   ret = 1;
  } else {
   ret = 0;
  }
 } else {
  if (!err && port == priv->port) {
   ret = 1;
  } else {
   if (!test_bit(IPOIB_FLAG_DEV_ADDR_CTRL, &priv->flags)) {
    memcpy(&priv->local_gid, &gid0,
           sizeof(priv->local_gid));
    memcpy(priv->dev->dev_addr + 4, &gid0,
           sizeof(priv->local_gid));
    ret = 1;
   }
  }
 }

out:
 netif_addr_unlock_bh(priv->dev);

 return ret;
}
