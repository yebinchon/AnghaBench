
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct usnic_ib_dev {TYPE_1__ ib_dev; int ufdev; } ;


 int dev_name (int *) ;
 int ib_dealloc_device (TYPE_1__*) ;
 int ib_unregister_device (TYPE_1__*) ;
 int usnic_fwd_dev_free (int ) ;
 int usnic_ib_sysfs_unregister_usdev (struct usnic_ib_dev*) ;
 int usnic_info (char*,int ) ;

__attribute__((used)) static void usnic_ib_device_remove(struct usnic_ib_dev *us_ibdev)
{
 usnic_info("Unregistering %s\n", dev_name(&us_ibdev->ib_dev.dev));
 usnic_ib_sysfs_unregister_usdev(us_ibdev);
 usnic_fwd_dev_free(us_ibdev->ufdev);
 ib_unregister_device(&us_ibdev->ib_dev);
 ib_dealloc_device(&us_ibdev->ib_dev);
}
