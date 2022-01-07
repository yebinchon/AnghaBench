
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {int port; int ca; } ;
struct ib_port_attr {int active_width; int active_speed; } ;
struct TYPE_2__ {int speed; int phy_address; int port; int autoneg; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_UNKNOWN ;
 int EINVAL ;
 int PORT_OTHER ;
 int SPEED_UNKNOWN ;
 int ib_query_port (int ,int ,struct ib_port_attr*) ;
 int ib_speed_enum_to_int (int ) ;
 int ib_width_enum_to_int (int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int ipoib_get_link_ksettings(struct net_device *netdev,
        struct ethtool_link_ksettings *cmd)
{
 struct ipoib_dev_priv *priv = ipoib_priv(netdev);
 struct ib_port_attr attr;
 int ret, speed, width;

 if (!netif_carrier_ok(netdev)) {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
  return 0;
 }

 ret = ib_query_port(priv->ca, priv->port, &attr);
 if (ret < 0)
  return -EINVAL;

 speed = ib_speed_enum_to_int(attr.active_speed);
 width = ib_width_enum_to_int(attr.active_width);

 if (speed < 0 || width < 0)
  return -EINVAL;





 cmd->base.speed = speed * width;
 cmd->base.duplex = DUPLEX_FULL;

 cmd->base.phy_address = 0xFF;

 cmd->base.autoneg = AUTONEG_ENABLE;
 cmd->base.port = PORT_OTHER;

 return 0;
}
