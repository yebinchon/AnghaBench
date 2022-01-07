
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_fwd_dev {int link_up; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void usnic_fwd_carrier_up(struct usnic_fwd_dev *ufdev)
{
 spin_lock(&ufdev->lock);
 ufdev->link_up = 1;
 spin_unlock(&ufdev->lock);
}
