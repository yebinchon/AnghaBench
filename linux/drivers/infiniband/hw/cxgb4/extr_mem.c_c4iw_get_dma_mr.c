
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;
struct c4iw_pd {int pdid; struct c4iw_dev* rhp; } ;
struct TYPE_2__ {int mw_bind_enable; unsigned long long len; int pbl_addr; scalar_t__ pbl_size; int stag; int perms; scalar_t__ page_size; scalar_t__ va_fbo; scalar_t__ zbva; int pdid; } ;
struct c4iw_mr {int wr_waitp; int dereg_skb; TYPE_1__ attr; struct ib_mr ibmr; struct c4iw_dev* rhp; } ;
struct c4iw_dev {int rdev; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int FW_RI_STAG_NSMR ;
 int GFP_KERNEL ;
 int IB_ACCESS_MW_BIND ;
 int SGE_MAX_WR_LEN ;
 int T4_STAG_UNSET ;
 int alloc_skb (int ,int ) ;
 int c4iw_alloc_wr_wait (int ) ;
 int c4iw_ib_to_tpt_access (int) ;
 int c4iw_init_wr_wait (int ) ;
 int c4iw_put_wr_wait (int ) ;
 int dereg_mem (int *,int ,scalar_t__,int ,int ,int ) ;
 int finish_mem_reg (struct c4iw_mr*,int ) ;
 int kfree (struct c4iw_mr*) ;
 int kfree_skb (int ) ;
 struct c4iw_mr* kzalloc (int,int ) ;
 int pr_debug (char*,struct ib_pd*) ;
 struct c4iw_pd* to_c4iw_pd (struct ib_pd*) ;
 int write_tpt_entry (int *,int ,int *,int,int ,int ,int ,int,int ,int ,unsigned long long,int ,int ,int ,int *,int ) ;

struct ib_mr *c4iw_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct c4iw_dev *rhp;
 struct c4iw_pd *php;
 struct c4iw_mr *mhp;
 int ret;
 u32 stag = T4_STAG_UNSET;

 pr_debug("ib_pd %p\n", pd);
 php = to_c4iw_pd(pd);
 rhp = php->rhp;

 mhp = kzalloc(sizeof(*mhp), GFP_KERNEL);
 if (!mhp)
  return ERR_PTR(-ENOMEM);
 mhp->wr_waitp = c4iw_alloc_wr_wait(GFP_KERNEL);
 if (!mhp->wr_waitp) {
  ret = -ENOMEM;
  goto err_free_mhp;
 }
 c4iw_init_wr_wait(mhp->wr_waitp);

 mhp->dereg_skb = alloc_skb(SGE_MAX_WR_LEN, GFP_KERNEL);
 if (!mhp->dereg_skb) {
  ret = -ENOMEM;
  goto err_free_wr_wait;
 }

 mhp->rhp = rhp;
 mhp->attr.pdid = php->pdid;
 mhp->attr.perms = c4iw_ib_to_tpt_access(acc);
 mhp->attr.mw_bind_enable = (acc&IB_ACCESS_MW_BIND) == IB_ACCESS_MW_BIND;
 mhp->attr.zbva = 0;
 mhp->attr.va_fbo = 0;
 mhp->attr.page_size = 0;
 mhp->attr.len = ~0ULL;
 mhp->attr.pbl_size = 0;

 ret = write_tpt_entry(&rhp->rdev, 0, &stag, 1, php->pdid,
         FW_RI_STAG_NSMR, mhp->attr.perms,
         mhp->attr.mw_bind_enable, 0, 0, ~0ULL, 0, 0, 0,
         ((void*)0), mhp->wr_waitp);
 if (ret)
  goto err_free_skb;

 ret = finish_mem_reg(mhp, stag);
 if (ret)
  goto err_dereg_mem;
 return &mhp->ibmr;
err_dereg_mem:
 dereg_mem(&rhp->rdev, mhp->attr.stag, mhp->attr.pbl_size,
    mhp->attr.pbl_addr, mhp->dereg_skb, mhp->wr_waitp);
err_free_skb:
 kfree_skb(mhp->dereg_skb);
err_free_wr_wait:
 c4iw_put_wr_wait(mhp->wr_waitp);
err_free_mhp:
 kfree(mhp);
 return ERR_PTR(ret);
}
