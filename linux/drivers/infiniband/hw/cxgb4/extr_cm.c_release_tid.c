
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct c4iw_rdev {int dummy; } ;


 int GFP_KERNEL ;
 int c4iw_ofld_send (struct c4iw_rdev*,struct sk_buff*) ;
 int cxgb_mk_tid_release (struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* get_skb (struct sk_buff*,int ,int ) ;
 int roundup (int,int) ;

__attribute__((used)) static void release_tid(struct c4iw_rdev *rdev, u32 hwtid, struct sk_buff *skb)
{
 u32 len = roundup(sizeof(struct cpl_tid_release), 16);

 skb = get_skb(skb, len, GFP_KERNEL);
 if (!skb)
  return;

 cxgb_mk_tid_release(skb, len, hwtid, 0);
 c4iw_ofld_send(rdev, skb);
 return;
}
