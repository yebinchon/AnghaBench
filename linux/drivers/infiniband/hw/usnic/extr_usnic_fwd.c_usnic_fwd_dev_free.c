
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_fwd_dev {int dummy; } ;


 int kfree (struct usnic_fwd_dev*) ;

void usnic_fwd_dev_free(struct usnic_fwd_dev *ufdev)
{
 kfree(ufdev);
}
