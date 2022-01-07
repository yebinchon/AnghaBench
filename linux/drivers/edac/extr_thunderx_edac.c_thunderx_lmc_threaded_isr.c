
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thunderx_lmc {int ring_tail; TYPE_1__* pdev; struct lmc_err_ctx* err_ctx; int ring_head; } ;
struct mem_ctl_info {struct thunderx_lmc* pvt_info; } ;
struct lmc_err_ctx {int reg_int; int reg_fadr; int reg_nxm_fadr; int reg_scram_fadr; int reg_ecc_synd; } ;
typedef int phys_addr_t ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct lmc_err_ctx*) ;
 scalar_t__ CIRC_CNT (int ,int ,int ) ;
 int GFP_KERNEL ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LMC_FADR_FBANK (int) ;
 int LMC_FADR_FBUNK (int) ;
 int LMC_FADR_FCOL (int) ;
 int LMC_FADR_FDIMM (int) ;
 int LMC_FADR_FROW (int) ;
 int LMC_INT_CE ;
 int LMC_INT_UE ;
 int LMC_MESSAGE_SIZE ;
 int LMC_OTHER_SIZE ;
 int decode_register (char*,int ,int ,int) ;
 int dev_dbg (int *,char*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int lmc_errors ;
 int offset_in_page (int ) ;
 int phys_to_pfn (int ) ;
 unsigned long ring_pos (int ,int ) ;
 int snprintf (char*,int ,char*,int ,int ,int ,int ,int ) ;
 int thunderx_faddr_to_phys (int,struct thunderx_lmc*) ;

__attribute__((used)) static irqreturn_t thunderx_lmc_threaded_isr(int irq, void *dev_id)
{
 struct mem_ctl_info *mci = dev_id;
 struct thunderx_lmc *lmc = mci->pvt_info;
 phys_addr_t phys_addr;

 unsigned long tail;
 struct lmc_err_ctx *ctx;

 irqreturn_t ret = IRQ_NONE;

 char *msg;
 char *other;

 msg = kmalloc(LMC_MESSAGE_SIZE, GFP_KERNEL);
 other = kmalloc(LMC_OTHER_SIZE, GFP_KERNEL);

 if (!msg || !other)
  goto err_free;

 while (CIRC_CNT(lmc->ring_head, lmc->ring_tail,
  ARRAY_SIZE(lmc->err_ctx))) {
  tail = ring_pos(lmc->ring_tail, ARRAY_SIZE(lmc->err_ctx));

  ctx = &lmc->err_ctx[tail];

  dev_dbg(&lmc->pdev->dev, "LMC_INT: %016llx\n",
   ctx->reg_int);
  dev_dbg(&lmc->pdev->dev, "LMC_FADR: %016llx\n",
   ctx->reg_fadr);
  dev_dbg(&lmc->pdev->dev, "LMC_NXM_FADR: %016llx\n",
   ctx->reg_nxm_fadr);
  dev_dbg(&lmc->pdev->dev, "LMC_SCRAM_FADR: %016llx\n",
   ctx->reg_scram_fadr);
  dev_dbg(&lmc->pdev->dev, "LMC_ECC_SYND: %016llx\n",
   ctx->reg_ecc_synd);

  snprintf(msg, LMC_MESSAGE_SIZE,
    "DIMM %lld rank %lld bank %lld row %lld col %lld",
    LMC_FADR_FDIMM(ctx->reg_scram_fadr),
    LMC_FADR_FBUNK(ctx->reg_scram_fadr),
    LMC_FADR_FBANK(ctx->reg_scram_fadr),
    LMC_FADR_FROW(ctx->reg_scram_fadr),
    LMC_FADR_FCOL(ctx->reg_scram_fadr));

  decode_register(other, LMC_OTHER_SIZE, lmc_errors,
    ctx->reg_int);

  phys_addr = thunderx_faddr_to_phys(ctx->reg_fadr, lmc);

  if (ctx->reg_int & LMC_INT_UE)
   edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
          phys_to_pfn(phys_addr),
          offset_in_page(phys_addr),
          0, -1, -1, -1, msg, other);
  else if (ctx->reg_int & LMC_INT_CE)
   edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
          phys_to_pfn(phys_addr),
          offset_in_page(phys_addr),
          0, -1, -1, -1, msg, other);

  lmc->ring_tail++;
 }

 ret = IRQ_HANDLED;

err_free:
 kfree(msg);
 kfree(other);

 return ret;
}
