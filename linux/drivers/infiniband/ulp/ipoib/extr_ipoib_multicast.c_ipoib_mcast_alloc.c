
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_mcast {int backoff; int pkt_queue; int neigh_list; int list; void* delay_until; void* created; struct net_device* dev; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* jiffies ;
 struct ipoib_mcast* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct ipoib_mcast *ipoib_mcast_alloc(struct net_device *dev,
          int can_sleep)
{
 struct ipoib_mcast *mcast;

 mcast = kzalloc(sizeof(*mcast), can_sleep ? GFP_KERNEL : GFP_ATOMIC);
 if (!mcast)
  return ((void*)0);

 mcast->dev = dev;
 mcast->created = jiffies;
 mcast->delay_until = jiffies;
 mcast->backoff = 1;

 INIT_LIST_HEAD(&mcast->list);
 INIT_LIST_HEAD(&mcast->neigh_list);
 skb_queue_head_init(&mcast->pkt_queue);

 return mcast;
}
