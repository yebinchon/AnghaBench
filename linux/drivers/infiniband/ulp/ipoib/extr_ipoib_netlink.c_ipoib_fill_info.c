
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; int pkey; } ;


 int EMSGSIZE ;
 int IFLA_IPOIB_MODE ;
 int IFLA_IPOIB_PKEY ;
 int IFLA_IPOIB_UMCAST ;
 int IPOIB_FLAG_ADMIN_CM ;
 int IPOIB_FLAG_UMCAST ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device const*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 u16 val;

 if (nla_put_u16(skb, IFLA_IPOIB_PKEY, priv->pkey))
  goto nla_put_failure;

 val = test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);
 if (nla_put_u16(skb, IFLA_IPOIB_MODE, val))
  goto nla_put_failure;

 val = test_bit(IPOIB_FLAG_UMCAST, &priv->flags);
 if (nla_put_u16(skb, IFLA_IPOIB_UMCAST, val))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
