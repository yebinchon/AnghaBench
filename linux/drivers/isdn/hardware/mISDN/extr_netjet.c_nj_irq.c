
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int dmacur; int idx; int dmastart; scalar_t__ dmairq; } ;
struct TYPE_3__ {int dmacur; int idx; int dmastart; scalar_t__ dmairq; } ;
struct tiger_hw {int base; int last_is0; int lock; TYPE_2__ send; TYPE_1__ recv; int name; int isac; int irqcnt; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISAC_ISTA ;
 int NJ_DMA_READ_ADR ;
 int NJ_DMA_WRITE_ADR ;
 int NJ_IRQM0_RD_MASK ;
 int NJ_IRQM0_WR_MASK ;
 int NJ_IRQSTAT0 ;
 int NJ_IRQSTAT1 ;
 int NJ_ISACIRQ ;
 int ReadISAC_nj (struct tiger_hw*,int ) ;
 int inb (int) ;
 void* inl (int) ;
 int mISDNisac_irq (int *,int) ;
 int outb (int,int) ;
 int pr_debug (char*,int ,int,int,...) ;
 int recv_tiger (struct tiger_hw*,int) ;
 int send_tiger (struct tiger_hw*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
nj_irq(int intno, void *dev_id)
{
 struct tiger_hw *card = dev_id;
 u8 val, s1val, s0val;

 spin_lock(&card->lock);
 s0val = inb(card->base | NJ_IRQSTAT0);
 s1val = inb(card->base | NJ_IRQSTAT1);
 if ((s1val & NJ_ISACIRQ) && (s0val == 0)) {

  spin_unlock(&card->lock);
  return IRQ_NONE;
 }
 pr_debug("%s: IRQSTAT0 %02x IRQSTAT1 %02x\n", card->name, s0val, s1val);
 card->irqcnt++;
 if (!(s1val & NJ_ISACIRQ)) {
  val = ReadISAC_nj(card, ISAC_ISTA);
  if (val)
   mISDNisac_irq(&card->isac, val);
 }

 if (s0val)

  outb(s0val, card->base | NJ_IRQSTAT0);
 else
  goto end;
 s1val = s0val;

 card->recv.dmacur = inl(card->base | NJ_DMA_WRITE_ADR);
 card->recv.idx = (card->recv.dmacur - card->recv.dmastart) >> 2;
 if (card->recv.dmacur < card->recv.dmairq)
  s0val = 0x08;
 else
  s0val = 0x04;

 card->send.dmacur = inl(card->base | NJ_DMA_READ_ADR);
 card->send.idx = (card->send.dmacur - card->send.dmastart) >> 2;
 if (card->send.dmacur < card->send.dmairq)
  s0val |= 0x02;
 else
  s0val |= 0x01;

 pr_debug("%s: DMA Status %02x/%02x/%02x %d/%d\n", card->name,
   s1val, s0val, card->last_is0,
   card->recv.idx, card->send.idx);

 if (s0val != card->last_is0) {
  if ((s0val & NJ_IRQM0_RD_MASK) !=
      (card->last_is0 & NJ_IRQM0_RD_MASK))

   send_tiger(card, s0val);
  if ((s0val & NJ_IRQM0_WR_MASK) !=
      (card->last_is0 & NJ_IRQM0_WR_MASK))

   recv_tiger(card, s0val);
 }
end:
 spin_unlock(&card->lock);
 return IRQ_HANDLED;
}
