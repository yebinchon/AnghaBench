
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ethtool_ops; } ;
struct ethtool_drvinfo {int driver; } ;
typedef int drvinfo ;
struct TYPE_2__ {int (* get_drvinfo ) (struct net_device*,struct ethtool_drvinfo*) ;} ;


 int memset (struct ethtool_drvinfo*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static bool is_bnxt_re_dev(struct net_device *netdev)
{
 struct ethtool_drvinfo drvinfo;

 if (netdev->ethtool_ops && netdev->ethtool_ops->get_drvinfo) {
  memset(&drvinfo, 0, sizeof(drvinfo));
  netdev->ethtool_ops->get_drvinfo(netdev, &drvinfo);

  if (strcmp(drvinfo.driver, "bnxt_en"))
   return 0;
  return 1;
 }
 return 0;
}
