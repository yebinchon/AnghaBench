
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;
struct ipoib_mcast {int list; int rb_node; int flags; } ;
struct ipoib_dev_priv {int multicast_tree; int dev; } ;


 int IPOIB_MCAST_FLAG_SENDONLY ;
 struct ipoib_mcast* __ipoib_mcast_find (int ,int*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ipoib_check_and_add_mcast_sendonly(struct ipoib_dev_priv *priv, u8 *mgid,
    struct list_head *remove_list)
{

 if (*mgid == 0xff) {
  struct ipoib_mcast *mcast = __ipoib_mcast_find(priv->dev, mgid);

  if (mcast && test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags)) {
   list_del(&mcast->list);
   rb_erase(&mcast->rb_node, &priv->multicast_tree);
   list_add_tail(&mcast->list, remove_list);
  }
 }
}
