
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ib_mw {int rkey; } ;
struct TYPE_2__ {int stag; } ;
struct c4iw_mw {int wr_waitp; int dereg_skb; TYPE_1__ attr; struct c4iw_dev* rhp; } ;
struct c4iw_dev {int rdev; int mrs; } ;


 int c4iw_put_wr_wait (int ) ;
 int deallocate_window (int *,int ,int ,int ) ;
 int kfree (struct c4iw_mw*) ;
 int kfree_skb (int ) ;
 int pr_debug (char*,struct ib_mw*,int,struct c4iw_mw*) ;
 struct c4iw_mw* to_c4iw_mw (struct ib_mw*) ;
 int xa_erase_irq (int *,int) ;

int c4iw_dealloc_mw(struct ib_mw *mw)
{
 struct c4iw_dev *rhp;
 struct c4iw_mw *mhp;
 u32 mmid;

 mhp = to_c4iw_mw(mw);
 rhp = mhp->rhp;
 mmid = (mw->rkey) >> 8;
 xa_erase_irq(&rhp->mrs, mmid);
 deallocate_window(&rhp->rdev, mhp->attr.stag, mhp->dereg_skb,
     mhp->wr_waitp);
 kfree_skb(mhp->dereg_skb);
 c4iw_put_wr_wait(mhp->wr_waitp);
 pr_debug("ib_mw %p mmid 0x%x ptr %p\n", mw, mmid, mhp);
 kfree(mhp);
 return 0;
}
