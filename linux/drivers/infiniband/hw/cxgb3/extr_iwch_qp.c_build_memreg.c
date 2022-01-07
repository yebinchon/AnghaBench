
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * pbl_addrs; } ;
struct TYPE_6__ {int * pbl_addrs; void* page_type_perms; void* va_base_lo_fbo; void* va_base_hi; void* len; void* stag; } ;
union t3_wr {TYPE_3__ pbl_frag; TYPE_2__ fastreg; } ;
typedef int u8 ;
typedef int u64 ;
struct t3_wq {int size_log2; scalar_t__ wptr; scalar_t__ queue; } ;
struct TYPE_5__ {int length; int iova; } ;
struct iwch_mr {int npages; scalar_t__* pages; TYPE_1__ ibmr; } ;
struct ib_reg_wr {int key; int access; TYPE_4__* mr; } ;
typedef int __be64 ;
struct TYPE_8__ {int page_size; } ;


 int EINVAL ;
 int Q_GENBIT (scalar_t__,int ) ;
 scalar_t__ Q_PTR2IDX (scalar_t__,int ) ;
 int T3_EOP ;
 int T3_MAX_FASTREG_DEPTH ;
 int T3_MAX_FASTREG_FRAG ;
 int T3_WR_FASTREG ;
 int TPT_VATO ;
 int V_FR_PAGE_COUNT (int) ;
 int V_FR_PAGE_SIZE (scalar_t__) ;
 int V_FR_PERMS (int ) ;
 int V_FR_TYPE (int ) ;
 int build_fw_riwrh (void*,int ,int ,int ,int ,int,int ) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 scalar_t__ ilog2 (int ) ;
 int iwch_ib_to_tpt_access (int ) ;
 struct iwch_mr* to_iwch_mr (TYPE_4__*) ;

__attribute__((used)) static int build_memreg(union t3_wr *wqe, const struct ib_reg_wr *wr,
   u8 *flit_cnt, int *wr_cnt, struct t3_wq *wq)
{
 struct iwch_mr *mhp = to_iwch_mr(wr->mr);
 int i;
 __be64 *p;

 if (mhp->npages > T3_MAX_FASTREG_DEPTH)
  return -EINVAL;
 *wr_cnt = 1;
 wqe->fastreg.stag = cpu_to_be32(wr->key);
 wqe->fastreg.len = cpu_to_be32(mhp->ibmr.length);
 wqe->fastreg.va_base_hi = cpu_to_be32(mhp->ibmr.iova >> 32);
 wqe->fastreg.va_base_lo_fbo =
    cpu_to_be32(mhp->ibmr.iova & 0xffffffff);
 wqe->fastreg.page_type_perms = cpu_to_be32(
  V_FR_PAGE_COUNT(mhp->npages) |
  V_FR_PAGE_SIZE(ilog2(wr->mr->page_size) - 12) |
  V_FR_TYPE(TPT_VATO) |
  V_FR_PERMS(iwch_ib_to_tpt_access(wr->access)));
 p = &wqe->fastreg.pbl_addrs[0];
 for (i = 0; i < mhp->npages; i++, p++) {


  if (i == T3_MAX_FASTREG_FRAG) {
   *wr_cnt = 2;
   wqe = (union t3_wr *)(wq->queue +
    Q_PTR2IDX((wq->wptr+1), wq->size_log2));
   build_fw_riwrh((void *)wqe, T3_WR_FASTREG, 0,
          Q_GENBIT(wq->wptr + 1, wq->size_log2),
          0, 1 + mhp->npages - T3_MAX_FASTREG_FRAG,
          T3_EOP);

   p = &wqe->pbl_frag.pbl_addrs[0];
  }
  *p = cpu_to_be64((u64)mhp->pages[i]);
 }
 *flit_cnt = 5 + mhp->npages;
 if (*flit_cnt > 15)
  *flit_cnt = 15;
 return 0;
}
