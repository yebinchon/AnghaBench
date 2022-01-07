
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {scalar_t__ ulp; } ;
struct sk_buff {int dummy; } ;
struct cxio_rdev {int dummy; } ;


 int EIO ;
 int cxgb3_ofld_send (struct t3cdev*,struct sk_buff*) ;
 scalar_t__ cxio_fatal_error (struct cxio_rdev*) ;
 int kfree_skb (struct sk_buff*) ;

int iwch_cxgb3_ofld_send(struct t3cdev *tdev, struct sk_buff *skb)
{
 int error = 0;
 struct cxio_rdev *rdev;

 rdev = (struct cxio_rdev *)tdev->ulp;
 if (cxio_fatal_error(rdev)) {
  kfree_skb(skb);
  return -EIO;
 }
 error = cxgb3_ofld_send(tdev, skb);
 if (error < 0)
  kfree_skb(skb);
 return error < 0 ? error : 0;
}
