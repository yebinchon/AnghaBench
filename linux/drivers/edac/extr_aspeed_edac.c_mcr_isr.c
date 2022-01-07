
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mem_ctl_info {int pdev; } ;
typedef int irqreturn_t ;


 int ASPEED_MCR_ADDR_REC ;
 int ASPEED_MCR_ADDR_UNREC ;
 int ASPEED_MCR_INTR_CTRL ;
 int ASPEED_MCR_INTR_CTRL_CLEAR ;
 int ASPEED_MCR_INTR_CTRL_CNT_REC ;
 int ASPEED_MCR_INTR_CTRL_CNT_UNREC ;
 int IRQ_HANDLED ;
 int aspeed_regmap ;
 int count_rec (struct mem_ctl_info*,int,int) ;
 int count_un_rec (struct mem_ctl_info*,int,int) ;
 int dev_dbg (int ,char*,...) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t mcr_isr(int irq, void *arg)
{
 struct mem_ctl_info *mci = arg;
 u32 rec_addr, un_rec_addr;
 u32 reg50, reg5c, reg58;
 u8 rec_cnt, un_rec_cnt;

 regmap_read(aspeed_regmap, ASPEED_MCR_INTR_CTRL, &reg50);
 dev_dbg(mci->pdev, "received edac interrupt w/ mcr register 50: 0x%x\n",
  reg50);


 rec_cnt = (reg50 & ASPEED_MCR_INTR_CTRL_CNT_REC) >> 16;
 un_rec_cnt = (reg50 & ASPEED_MCR_INTR_CTRL_CNT_UNREC) >> 12;

 dev_dbg(mci->pdev, "%d recoverable interrupts and %d unrecoverable interrupts\n",
  rec_cnt, un_rec_cnt);

 regmap_read(aspeed_regmap, ASPEED_MCR_ADDR_UNREC, &reg58);
 un_rec_addr = reg58;

 regmap_read(aspeed_regmap, ASPEED_MCR_ADDR_REC, &reg5c);
 rec_addr = reg5c;


 regmap_update_bits(aspeed_regmap, ASPEED_MCR_INTR_CTRL,
      ASPEED_MCR_INTR_CTRL_CLEAR,
      ASPEED_MCR_INTR_CTRL_CLEAR);

 regmap_update_bits(aspeed_regmap, ASPEED_MCR_INTR_CTRL,
      ASPEED_MCR_INTR_CTRL_CLEAR, 0);


 count_rec(mci, rec_cnt, rec_addr);
 count_un_rec(mci, un_rec_cnt, un_rec_addr);

 if (!rec_cnt && !un_rec_cnt)
  dev_dbg(mci->pdev, "received edac interrupt, but did not find any ECC counters\n");

 regmap_read(aspeed_regmap, ASPEED_MCR_INTR_CTRL, &reg50);
 dev_dbg(mci->pdev, "edac interrupt handled. mcr reg 50 is now: 0x%x\n",
  reg50);

 return IRQ_HANDLED;
}
