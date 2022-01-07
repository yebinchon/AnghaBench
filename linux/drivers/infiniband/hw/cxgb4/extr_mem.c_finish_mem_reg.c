
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int state; int stag; int page_size; int va_fbo; int len; } ;
struct TYPE_4__ {int rkey; int lkey; unsigned int page_size; int iova; int length; } ;
struct c4iw_mr {TYPE_3__* rhp; TYPE_2__ attr; TYPE_1__ ibmr; } ;
struct TYPE_6__ {int mrs; } ;


 int GFP_KERNEL ;
 int pr_debug (char*,int,struct c4iw_mr*) ;
 int xa_insert_irq (int *,int,struct c4iw_mr*,int ) ;

__attribute__((used)) static int finish_mem_reg(struct c4iw_mr *mhp, u32 stag)
{
 u32 mmid;

 mhp->attr.state = 1;
 mhp->attr.stag = stag;
 mmid = stag >> 8;
 mhp->ibmr.rkey = mhp->ibmr.lkey = stag;
 mhp->ibmr.length = mhp->attr.len;
 mhp->ibmr.iova = mhp->attr.va_fbo;
 mhp->ibmr.page_size = 1U << (mhp->attr.page_size + 12);
 pr_debug("mmid 0x%x mhp %p\n", mmid, mhp);
 return xa_insert_irq(&mhp->rhp->mrs, mmid, mhp, GFP_KERNEL);
}
