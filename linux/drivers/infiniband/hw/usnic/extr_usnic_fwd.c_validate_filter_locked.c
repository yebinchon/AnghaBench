
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usnic_fwd_dev {scalar_t__ inaddr; int lock; } ;
struct TYPE_3__ {int flags; scalar_t__ dst_port; scalar_t__ dst_addr; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;
struct filter {scalar_t__ type; TYPE_2__ u; } ;


 int EACCES ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int FILTER_FIELD_5TUP_DST_AD ;
 int FILTER_FIELD_5TUP_DST_PT ;
 scalar_t__ FILTER_IPV4_5TUPLE ;
 int lockdep_assert_held (int *) ;
 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static int validate_filter_locked(struct usnic_fwd_dev *ufdev,
     struct filter *filter)
{

 lockdep_assert_held(&ufdev->lock);

 if (filter->type == FILTER_IPV4_5TUPLE) {
  if (!(filter->u.ipv4.flags & FILTER_FIELD_5TUP_DST_AD))
   return -EACCES;
  if (!(filter->u.ipv4.flags & FILTER_FIELD_5TUP_DST_PT))
   return -EBUSY;
  else if (ufdev->inaddr == 0)
   return -EINVAL;
  else if (filter->u.ipv4.dst_port == 0)
   return -ERANGE;
  else if (ntohl(ufdev->inaddr) != filter->u.ipv4.dst_addr)
   return -EFAULT;
  else
   return 0;
 }

 return 0;
}
