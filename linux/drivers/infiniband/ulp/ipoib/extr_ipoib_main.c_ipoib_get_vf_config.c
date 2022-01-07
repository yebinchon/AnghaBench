
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int dev_addr; } ;
struct ipoib_dev_priv {int port; int ca; } ;
struct ifla_vf_info {int vf; int mac; } ;


 int ib_get_vf_config (int ,int,int ,struct ifla_vf_info*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ipoib_get_vf_config(struct net_device *dev, int vf,
          struct ifla_vf_info *ivf)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int err;

 err = ib_get_vf_config(priv->ca, vf, priv->port, ivf);
 if (err)
  return err;

 ivf->vf = vf;
 memcpy(ivf->mac, dev->dev_addr, dev->addr_len);

 return 0;
}
