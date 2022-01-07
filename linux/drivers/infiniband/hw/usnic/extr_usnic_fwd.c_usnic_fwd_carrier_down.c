
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_fwd_dev {int lock; scalar_t__ link_up; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void usnic_fwd_carrier_down(struct usnic_fwd_dev *ufdev)
{
 spin_lock(&ufdev->lock);
 ufdev->link_up = 0;
 spin_unlock(&ufdev->lock);
}
