
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_elements; int cons; } ;
struct bnxt_qplib_rcfw {int requested; int vector; int creq_ring_id; TYPE_1__ creq; int creq_bar_reg_iomem; int worker; TYPE_2__* res; } ;
struct TYPE_4__ {int cctx; } ;


 int EFAULT ;
 int bnxt_qplib_creq_irq ;
 int bnxt_qplib_is_chip_gen_p5 (int ) ;
 int bnxt_qplib_ring_creq_db_rearm (int ,int ,int ,int ,int) ;
 int bnxt_qplib_service_creq ;
 int request_irq (int,int ,int ,char*,struct bnxt_qplib_rcfw*) ;
 int tasklet_enable (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

int bnxt_qplib_rcfw_start_irq(struct bnxt_qplib_rcfw *rcfw, int msix_vector,
         bool need_init)
{
 bool gen_p5 = bnxt_qplib_is_chip_gen_p5(rcfw->res->cctx);
 int rc;

 if (rcfw->requested)
  return -EFAULT;

 rcfw->vector = msix_vector;
 if (need_init)
  tasklet_init(&rcfw->worker,
        bnxt_qplib_service_creq, (unsigned long)rcfw);
 else
  tasklet_enable(&rcfw->worker);
 rc = request_irq(rcfw->vector, bnxt_qplib_creq_irq, 0,
    "bnxt_qplib_creq", rcfw);
 if (rc)
  return rc;
 rcfw->requested = 1;
 bnxt_qplib_ring_creq_db_rearm(rcfw->creq_bar_reg_iomem,
          rcfw->creq.cons, rcfw->creq.max_elements,
          rcfw->creq_ring_id, gen_p5);

 return 0;
}
