
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ipoib_neigh_table {int htbl; } ;
struct ipoib_neigh_hash {int * buckets; } ;
struct ipoib_neigh {int alive; int queue; int refcnt; int daddr; int hnext; } ;
struct ipoib_dev_priv {struct ipoib_neigh_table ntbl; } ;


 int INFINIBAND_ALEN ;
 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ;
 int atomic_inc_not_zero (int *) ;
 size_t ipoib_addr_hash (struct ipoib_neigh_hash*,int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 scalar_t__ memcmp (int *,int ,int ) ;
 void* rcu_dereference_bh (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 scalar_t__ skb_queue_len (int *) ;

struct ipoib_neigh *ipoib_neigh_get(struct net_device *dev, u8 *daddr)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_neigh_table *ntbl = &priv->ntbl;
 struct ipoib_neigh_hash *htbl;
 struct ipoib_neigh *neigh = ((void*)0);
 u32 hash_val;

 rcu_read_lock_bh();

 htbl = rcu_dereference_bh(ntbl->htbl);

 if (!htbl)
  goto out_unlock;

 hash_val = ipoib_addr_hash(htbl, daddr);
 for (neigh = rcu_dereference_bh(htbl->buckets[hash_val]);
      neigh != ((void*)0);
      neigh = rcu_dereference_bh(neigh->hnext)) {
  if (memcmp(daddr, neigh->daddr, INFINIBAND_ALEN) == 0) {

   if (!atomic_inc_not_zero(&neigh->refcnt)) {

    neigh = ((void*)0);
    goto out_unlock;
   }

   if (likely(skb_queue_len(&neigh->queue) < IPOIB_MAX_PATH_REC_QUEUE))
    neigh->alive = jiffies;
   goto out_unlock;
  }
 }

out_unlock:
 rcu_read_unlock_bh();
 return neigh;
}
