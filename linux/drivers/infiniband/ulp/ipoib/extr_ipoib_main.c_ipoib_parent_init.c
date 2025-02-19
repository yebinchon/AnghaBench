
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int raw; } ;
struct ipoib_dev_priv {scalar_t__ port; TYPE_6__* dev; TYPE_2__* ca; TYPE_3__ local_gid; int pkey; int max_ib_mtu; } ;
struct ib_port_attr {int max_mtu; } ;
struct TYPE_10__ {scalar_t__ dev_id; scalar_t__ dev_port; scalar_t__ dev_addr; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ dev; int name; } ;


 int SET_NETDEV_DEV (TYPE_6__*,int ) ;
 int ib_mtu_enum_to_int (int ) ;
 int ib_query_pkey (TYPE_2__*,scalar_t__,int ,int *) ;
 int ib_query_port (TYPE_2__*,scalar_t__,struct ib_port_attr*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int memcpy (scalar_t__,int ,int) ;
 int pr_warn (char*,int ,scalar_t__,...) ;
 int rdma_query_gid (TYPE_2__*,scalar_t__,int ,TYPE_3__*) ;

__attribute__((used)) static int ipoib_parent_init(struct net_device *ndev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(ndev);
 struct ib_port_attr attr;
 int result;

 result = ib_query_port(priv->ca, priv->port, &attr);
 if (result) {
  pr_warn("%s: ib_query_port %d failed\n", priv->ca->name,
   priv->port);
  return result;
 }
 priv->max_ib_mtu = ib_mtu_enum_to_int(attr.max_mtu);

 result = ib_query_pkey(priv->ca, priv->port, 0, &priv->pkey);
 if (result) {
  pr_warn("%s: ib_query_pkey port %d failed (ret = %d)\n",
   priv->ca->name, priv->port, result);
  return result;
 }

 result = rdma_query_gid(priv->ca, priv->port, 0, &priv->local_gid);
 if (result) {
  pr_warn("%s: rdma_query_gid port %d failed (ret = %d)\n",
   priv->ca->name, priv->port, result);
  return result;
 }
 memcpy(priv->dev->dev_addr + 4, priv->local_gid.raw,
        sizeof(union ib_gid));

 SET_NETDEV_DEV(priv->dev, priv->ca->dev.parent);
 priv->dev->dev_port = priv->port - 1;

 priv->dev->dev_id = priv->port - 1;

 return 0;
}
