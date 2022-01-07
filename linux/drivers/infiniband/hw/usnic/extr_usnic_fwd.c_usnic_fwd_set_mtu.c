
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_fwd_dev {unsigned int mtu; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void usnic_fwd_set_mtu(struct usnic_fwd_dev *ufdev, unsigned int mtu)
{
 spin_lock(&ufdev->lock);
 ufdev->mtu = mtu;
 spin_unlock(&ufdev->lock);
}
