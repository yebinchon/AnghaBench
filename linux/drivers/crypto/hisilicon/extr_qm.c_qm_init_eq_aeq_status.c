
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_qm_status {int eqc_phase; int aeqc_phase; scalar_t__ aeq_head; scalar_t__ eq_head; } ;
struct hisi_qm {struct hisi_qm_status status; } ;



__attribute__((used)) static void qm_init_eq_aeq_status(struct hisi_qm *qm)
{
 struct hisi_qm_status *status = &qm->status;

 status->eq_head = 0;
 status->aeq_head = 0;
 status->eqc_phase = 1;
 status->aeqc_phase = 1;
}
