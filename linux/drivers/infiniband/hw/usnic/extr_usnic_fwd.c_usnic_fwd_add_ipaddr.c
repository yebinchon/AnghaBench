
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_fwd_dev {int lock; scalar_t__ inaddr; } ;
typedef scalar_t__ __be32 ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void usnic_fwd_add_ipaddr(struct usnic_fwd_dev *ufdev, __be32 inaddr)
{
 spin_lock(&ufdev->lock);
 if (!ufdev->inaddr)
  ufdev->inaddr = inaddr;
 spin_unlock(&ufdev->lock);
}
