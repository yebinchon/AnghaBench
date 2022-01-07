
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; int name; } ;
struct ipoib_dev_priv {int * wq; int * pd; TYPE_1__* rn_ops; TYPE_2__* ca; int * qp; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int (* ndo_init ) (struct net_device*) ;} ;


 int ENODEV ;
 int ENOMEM ;
 int IFF_UP ;
 scalar_t__ IS_ERR (int *) ;
 int WQ_MEM_RECLAIM ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;
 int * ib_alloc_pd (TYPE_2__*,int ) ;
 int ib_dealloc_pd (int *) ;
 int ipoib_ib_dev_cleanup (struct net_device*) ;
 scalar_t__ ipoib_ib_dev_open (struct net_device*) ;
 int ipoib_neigh_hash_init (struct ipoib_dev_priv*) ;
 int ipoib_neigh_hash_uninit (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int pr_warn (char*,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int ipoib_dev_init(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret = -ENOMEM;

 priv->qp = ((void*)0);





 priv->wq = alloc_ordered_workqueue("ipoib_wq", WQ_MEM_RECLAIM);
 if (!priv->wq) {
  pr_warn("%s: failed to allocate device WQ\n", dev->name);
  goto out;
 }


 priv->pd = ib_alloc_pd(priv->ca, 0);
 if (IS_ERR(priv->pd)) {
  pr_warn("%s: failed to allocate PD\n", priv->ca->name);
  goto clean_wq;
 }

 ret = priv->rn_ops->ndo_init(dev);
 if (ret) {
  pr_warn("%s failed to init HW resource\n", dev->name);
  goto out_free_pd;
 }

 ret = ipoib_neigh_hash_init(priv);
 if (ret) {
  pr_warn("%s failed to init neigh hash\n", dev->name);
  goto out_dev_uninit;
 }

 if (dev->flags & IFF_UP) {
  if (ipoib_ib_dev_open(dev)) {
   pr_warn("%s failed to open device\n", dev->name);
   ret = -ENODEV;
   goto out_hash_uninit;
  }
 }

 return 0;

out_hash_uninit:
 ipoib_neigh_hash_uninit(dev);

out_dev_uninit:
 ipoib_ib_dev_cleanup(dev);

out_free_pd:
 if (priv->pd) {
  ib_dealloc_pd(priv->pd);
  priv->pd = ((void*)0);
 }

clean_wq:
 if (priv->wq) {
  destroy_workqueue(priv->wq);
  priv->wq = ((void*)0);
 }

out:
 return ret;
}
