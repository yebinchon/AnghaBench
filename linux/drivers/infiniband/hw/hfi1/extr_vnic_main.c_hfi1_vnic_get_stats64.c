
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;
struct opa_vnic_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int dummy; } ;


 int hfi1_vnic_update_stats (struct hfi1_vnic_vport_info*,struct opa_vnic_stats*) ;
 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;

__attribute__((used)) static void hfi1_vnic_get_stats64(struct net_device *netdev,
      struct rtnl_link_stats64 *stats)
{
 struct opa_vnic_stats *vstats = (struct opa_vnic_stats *)stats;
 struct hfi1_vnic_vport_info *vinfo = opa_vnic_dev_priv(netdev);

 hfi1_vnic_update_stats(vinfo, vstats);
}
