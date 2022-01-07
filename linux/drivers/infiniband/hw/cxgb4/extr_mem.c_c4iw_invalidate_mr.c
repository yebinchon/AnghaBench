
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ state; } ;
struct c4iw_mr {TYPE_1__ attr; } ;
struct c4iw_dev {int mrs; } ;


 struct c4iw_mr* xa_load (int *,int) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void c4iw_invalidate_mr(struct c4iw_dev *rhp, u32 rkey)
{
 struct c4iw_mr *mhp;
 unsigned long flags;

 xa_lock_irqsave(&rhp->mrs, flags);
 mhp = xa_load(&rhp->mrs, rkey >> 8);
 if (mhp)
  mhp->attr.state = 0;
 xa_unlock_irqrestore(&rhp->mrs, flags);
}
