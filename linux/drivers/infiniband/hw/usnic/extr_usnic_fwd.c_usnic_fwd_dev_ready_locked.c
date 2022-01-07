
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_fwd_dev {int link_up; int lock; } ;


 int EPERM ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int usnic_fwd_dev_ready_locked(struct usnic_fwd_dev *ufdev)
{
 lockdep_assert_held(&ufdev->lock);

 if (!ufdev->link_up)
  return -EPERM;

 return 0;
}
