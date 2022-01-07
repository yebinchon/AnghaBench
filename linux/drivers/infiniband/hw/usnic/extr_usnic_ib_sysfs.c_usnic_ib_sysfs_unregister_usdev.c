
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_dev {int qpn_kobj; } ;


 int kobject_put (int ) ;

void usnic_ib_sysfs_unregister_usdev(struct usnic_ib_dev *us_ibdev)
{
 kobject_put(us_ibdev->qpn_kobj);
}
