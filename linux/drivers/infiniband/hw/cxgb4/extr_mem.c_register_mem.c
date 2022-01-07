
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct c4iw_pd {int dummy; } ;
struct TYPE_2__ {int len; int pbl_addr; int pbl_size; int stag; int va_fbo; int zbva; int mw_bind_enable; int perms; int pdid; } ;
struct c4iw_mr {int * dereg_skb; int wr_waitp; TYPE_1__ attr; } ;
struct c4iw_dev {int rdev; } ;


 int FW_RI_STAG_NSMR ;
 int T4_STAG_UNSET ;
 int dereg_mem (int *,int ,int ,int ,int *,int ) ;
 int finish_mem_reg (struct c4iw_mr*,int ) ;
 int write_tpt_entry (int *,int ,int *,int,int ,int ,int ,int ,int ,int ,int,int,int ,int ,int *,int ) ;

__attribute__((used)) static int register_mem(struct c4iw_dev *rhp, struct c4iw_pd *php,
        struct c4iw_mr *mhp, int shift)
{
 u32 stag = T4_STAG_UNSET;
 int ret;

 ret = write_tpt_entry(&rhp->rdev, 0, &stag, 1, mhp->attr.pdid,
         FW_RI_STAG_NSMR, mhp->attr.len ?
         mhp->attr.perms : 0,
         mhp->attr.mw_bind_enable, mhp->attr.zbva,
         mhp->attr.va_fbo, mhp->attr.len ?
         mhp->attr.len : -1, shift - 12,
         mhp->attr.pbl_size, mhp->attr.pbl_addr, ((void*)0),
         mhp->wr_waitp);
 if (ret)
  return ret;

 ret = finish_mem_reg(mhp, stag);
 if (ret) {
  dereg_mem(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
     mhp->attr.pbl_addr, mhp->dereg_skb, mhp->wr_waitp);
  mhp->dereg_skb = ((void*)0);
 }
 return ret;
}
