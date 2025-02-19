
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int paddr; } ;
struct TYPE_5__ {int paddr; } ;
struct TYPE_4__ {int paddr; } ;
struct sec_queue {scalar_t__ regs; TYPE_3__ ring_db; TYPE_2__ ring_cq; TYPE_1__ ring_cmd; } ;


 int SEC_QUEUE_AR_FROCE_NOALLOC ;
 scalar_t__ SEC_QUEUE_LEN ;
 int SEC_Q_INIT_AND_STAT_CLEAR ;
 scalar_t__ SEC_Q_INIT_REG ;
 scalar_t__ SEC_Q_OT_TH_REG ;
 scalar_t__ SEC_Q_PROC_NUM_CFG_REG ;
 int sec_queue_abn_irq_disable (struct sec_queue*) ;
 int sec_queue_ar_alloc (struct sec_queue*,int ) ;
 int sec_queue_ar_pkgattr (struct sec_queue*,int) ;
 int sec_queue_aw_alloc (struct sec_queue*,int ) ;
 int sec_queue_aw_pkgattr (struct sec_queue*,int) ;
 int sec_queue_cmdbase_addr (struct sec_queue*,int ) ;
 int sec_queue_depth (struct sec_queue*,scalar_t__) ;
 int sec_queue_errbase_addr (struct sec_queue*,int ) ;
 int sec_queue_irq_disable (struct sec_queue*) ;
 int sec_queue_outorder_addr (struct sec_queue*,int ) ;
 int sec_queue_reorder (struct sec_queue*,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sec_queue_hw_init(struct sec_queue *queue)
{
 sec_queue_ar_alloc(queue, SEC_QUEUE_AR_FROCE_NOALLOC);
 sec_queue_aw_alloc(queue, SEC_QUEUE_AR_FROCE_NOALLOC);
 sec_queue_ar_pkgattr(queue, 1);
 sec_queue_aw_pkgattr(queue, 1);


 sec_queue_reorder(queue, 1);


 writel_relaxed(1, queue->regs + SEC_Q_PROC_NUM_CFG_REG);

 sec_queue_depth(queue, SEC_QUEUE_LEN - 1);

 sec_queue_cmdbase_addr(queue, queue->ring_cmd.paddr);

 sec_queue_outorder_addr(queue, queue->ring_cq.paddr);

 sec_queue_errbase_addr(queue, queue->ring_db.paddr);

 writel_relaxed(0x100, queue->regs + SEC_Q_OT_TH_REG);

 sec_queue_abn_irq_disable(queue);
 sec_queue_irq_disable(queue);
 writel_relaxed(SEC_Q_INIT_AND_STAT_CLEAR, queue->regs + SEC_Q_INIT_REG);
}
