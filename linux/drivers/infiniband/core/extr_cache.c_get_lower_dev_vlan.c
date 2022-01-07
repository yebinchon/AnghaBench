
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ is_vlan_dev (struct net_device*) ;
 int vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static int get_lower_dev_vlan(struct net_device *lower_dev, void *data)
{
 u16 *vlan_id = data;

 if (is_vlan_dev(lower_dev))
  *vlan_id = vlan_dev_vlan_id(lower_dev);




 return 1;
}
