
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_path {int neigh_list; int queue; } ;
struct ipoib_dev_priv {int broadcast; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int init_path_rec (struct ipoib_dev_priv*,struct ipoib_path*,void*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 struct ipoib_path* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct ipoib_path *path_rec_create(struct net_device *dev, void *gid)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_path *path;

 if (!priv->broadcast)
  return ((void*)0);

 path = kzalloc(sizeof(*path), GFP_ATOMIC);
 if (!path)
  return ((void*)0);

 skb_queue_head_init(&path->queue);

 INIT_LIST_HEAD(&path->neigh_list);

 init_path_rec(priv, path, gid);

 return path;
}
