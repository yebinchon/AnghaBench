
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;


 int ipoib_ethtool_ops ;

void ipoib_set_ethtool_ops(struct net_device *dev)
{
 dev->ethtool_ops = &ipoib_ethtool_ops;
}
