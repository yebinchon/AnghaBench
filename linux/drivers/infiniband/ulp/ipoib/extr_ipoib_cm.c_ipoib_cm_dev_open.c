
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct TYPE_5__ {int * id; } ;
struct ipoib_dev_priv {TYPE_2__ cm; TYPE_1__* qp; TYPE_3__* ca; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int qp_num; } ;


 int IPOIB_CM_IETF_ID ;
 int IPOIB_CM_SUPPORTED (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int cpu_to_be64 (int) ;
 int ib_cm_listen (int *,int ,int ) ;
 int * ib_create_cm_id (TYPE_3__*,int ,struct net_device*) ;
 int ib_destroy_cm_id (int *) ;
 int ipoib_cm_rx_handler ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int pr_warn (char*,int ,...) ;

int ipoib_cm_dev_open(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;

 if (!IPOIB_CM_SUPPORTED(dev->dev_addr))
  return 0;

 priv->cm.id = ib_create_cm_id(priv->ca, ipoib_cm_rx_handler, dev);
 if (IS_ERR(priv->cm.id)) {
  pr_warn("%s: failed to create CM ID\n", priv->ca->name);
  ret = PTR_ERR(priv->cm.id);
  goto err_cm;
 }

 ret = ib_cm_listen(priv->cm.id, cpu_to_be64(IPOIB_CM_IETF_ID | priv->qp->qp_num),
      0);
 if (ret) {
  pr_warn("%s: failed to listen on ID 0x%llx\n", priv->ca->name,
   IPOIB_CM_IETF_ID | priv->qp->qp_num);
  goto err_listen;
 }

 return 0;

err_listen:
 ib_destroy_cm_id(priv->cm.id);
err_cm:
 priv->cm.id = ((void*)0);
 return ret;
}
