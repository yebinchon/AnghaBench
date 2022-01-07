
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ slc_int; } ;
union nps_pkt_slc_cnts {TYPE_1__ s; int value; } ;
struct nitrox_q_vector {int resp_tasklet; struct nitrox_cmdq* cmdq; } ;
struct nitrox_cmdq {int compl_cnt_csr_addr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int readq (int ) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t nps_pkt_slc_isr(int irq, void *data)
{
 struct nitrox_q_vector *qvec = data;
 union nps_pkt_slc_cnts slc_cnts;
 struct nitrox_cmdq *cmdq = qvec->cmdq;

 slc_cnts.value = readq(cmdq->compl_cnt_csr_addr);

 if (slc_cnts.s.slc_int)
  tasklet_hi_schedule(&qvec->resp_tasklet);

 return IRQ_HANDLED;
}
