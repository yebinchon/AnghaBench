
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resend; } ;
union nps_pkt_slc_cnts {int value; TYPE_1__ s; } ;
struct nitrox_q_vector {struct nitrox_cmdq* cmdq; } ;
struct nitrox_cmdq {int backlog_qflush; int backlog_count; int compl_cnt_csr_addr; } ;


 scalar_t__ atomic_read (int *) ;
 int process_response_list (struct nitrox_cmdq*) ;
 int readq (int ) ;
 int schedule_work (int *) ;
 int writeq (int ,int ) ;

void pkt_slc_resp_tasklet(unsigned long data)
{
 struct nitrox_q_vector *qvec = (void *)(uintptr_t)(data);
 struct nitrox_cmdq *cmdq = qvec->cmdq;
 union nps_pkt_slc_cnts slc_cnts;


 slc_cnts.value = readq(cmdq->compl_cnt_csr_addr);

 slc_cnts.s.resend = 1;

 process_response_list(cmdq);





 writeq(slc_cnts.value, cmdq->compl_cnt_csr_addr);

 if (atomic_read(&cmdq->backlog_count))
  schedule_work(&cmdq->backlog_qflush);
}
