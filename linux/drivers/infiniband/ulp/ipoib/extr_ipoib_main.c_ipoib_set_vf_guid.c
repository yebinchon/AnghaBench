
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int port; int ca; } ;


 int EINVAL ;
 int IFLA_VF_IB_NODE_GUID ;
 int IFLA_VF_IB_PORT_GUID ;
 int ib_set_vf_guid (int ,int,int ,int ,int) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

__attribute__((used)) static int ipoib_set_vf_guid(struct net_device *dev, int vf, u64 guid, int type)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 if (type != IFLA_VF_IB_NODE_GUID && type != IFLA_VF_IB_PORT_GUID)
  return -EINVAL;

 return ib_set_vf_guid(priv->ca, vf, priv->port, guid, type);
}
