
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum bonding_slave_state { ____Placeholder_bonding_slave_state } bonding_slave_state ;


 int BONDING_SLAVE_STATE_ACTIVE ;
 int BONDING_SLAVE_STATE_INACTIVE ;
 int BONDING_SLAVE_STATE_NA ;
 struct net_device* bond_option_active_slave_get_rcu (int ) ;
 int netdev_priv (struct net_device*) ;
 scalar_t__ netif_is_bond_master (struct net_device*) ;

__attribute__((used)) static enum bonding_slave_state is_eth_active_slave_of_bonding_rcu(struct net_device *dev,
           struct net_device *upper)
{
 if (upper && netif_is_bond_master(upper)) {
  struct net_device *pdev =
   bond_option_active_slave_get_rcu(netdev_priv(upper));

  if (pdev)
   return dev == pdev ? BONDING_SLAVE_STATE_ACTIVE :
    BONDING_SLAVE_STATE_INACTIVE;
 }

 return BONDING_SLAVE_STATE_NA;
}
