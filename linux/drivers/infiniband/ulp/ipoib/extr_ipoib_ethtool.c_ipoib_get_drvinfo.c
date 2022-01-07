
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_2__* ca; } ;
struct ethtool_drvinfo {int driver; int version; int bus_info; int fw_version; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 char* dev_name (int ) ;
 int ib_get_device_fw_str (TYPE_2__*,int ) ;
 char* ipoib_driver_version ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void ipoib_get_drvinfo(struct net_device *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 struct ipoib_dev_priv *priv = ipoib_priv(netdev);

 ib_get_device_fw_str(priv->ca, drvinfo->fw_version);

 strlcpy(drvinfo->bus_info, dev_name(priv->ca->dev.parent),
  sizeof(drvinfo->bus_info));

 strlcpy(drvinfo->version, ipoib_driver_version,
  sizeof(drvinfo->version));

 strlcpy(drvinfo->driver, "ib_ipoib", sizeof(drvinfo->driver));
}
