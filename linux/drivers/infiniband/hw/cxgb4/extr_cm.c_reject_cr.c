
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct c4iw_dev {int rdev; } ;


 int pr_debug (char*,struct c4iw_dev*,int ) ;
 int release_tid (int *,int ,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static void reject_cr(struct c4iw_dev *dev, u32 hwtid, struct sk_buff *skb)
{
 pr_debug("c4iw_dev %p tid %u\n", dev, hwtid);
 skb_trim(skb, sizeof(struct cpl_tid_release));
 release_tid(&dev->rdev, hwtid, skb);
 return;
}
