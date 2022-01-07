
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct usnic_ib_dev {TYPE_2__ ib_dev; int * qpn_kobj; } ;


 int ENOMEM ;
 int * kobject_create_and_add (char*,int *) ;
 int kobject_get (int *) ;
 int kobject_put (int *) ;

int usnic_ib_sysfs_register_usdev(struct usnic_ib_dev *us_ibdev)
{

 kobject_get(&us_ibdev->ib_dev.dev.kobj);
 us_ibdev->qpn_kobj = kobject_create_and_add("qpn",
   &us_ibdev->ib_dev.dev.kobj);
 if (us_ibdev->qpn_kobj == ((void*)0)) {
  kobject_put(&us_ibdev->ib_dev.dev.kobj);
  return -ENOMEM;
 }

 return 0;
}
