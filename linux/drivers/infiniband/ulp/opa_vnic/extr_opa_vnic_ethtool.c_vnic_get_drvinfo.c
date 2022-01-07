
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int dev_name (int ) ;
 int opa_vnic_driver_name ;
 int opa_vnic_driver_version ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void vnic_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, opa_vnic_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, opa_vnic_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, dev_name(netdev->dev.parent),
  sizeof(drvinfo->bus_info));
}
