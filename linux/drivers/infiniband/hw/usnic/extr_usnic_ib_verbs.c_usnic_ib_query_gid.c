
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int * raw; } ;
typedef int u8 ;
struct usnic_ib_dev {int usdev_lock; TYPE_1__* ufdev; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int inaddr; int mac; } ;


 int EINVAL ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usnic_ib_dev* to_usdev (struct ib_device*) ;
 int usnic_dbg (char*) ;
 int usnic_mac_ip_to_gid (int ,int ,int *) ;

int usnic_ib_query_gid(struct ib_device *ibdev, u8 port, int index,
    union ib_gid *gid)
{

 struct usnic_ib_dev *us_ibdev = to_usdev(ibdev);
 usnic_dbg("\n");

 if (index > 1)
  return -EINVAL;

 mutex_lock(&us_ibdev->usdev_lock);
 memset(&(gid->raw[0]), 0, sizeof(gid->raw));
 usnic_mac_ip_to_gid(us_ibdev->ufdev->mac, us_ibdev->ufdev->inaddr,
   &gid->raw[0]);
 mutex_unlock(&us_ibdev->usdev_lock);

 return 0;
}
