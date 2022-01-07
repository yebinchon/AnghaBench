
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_elements; int cons; } ;
struct bnxt_qplib_rcfw {int requested; int vector; int worker; int creq_ring_id; TYPE_2__ creq; int creq_bar_reg_iomem; TYPE_1__* res; } ;
struct TYPE_3__ {int cctx; } ;


 int bnxt_qplib_is_chip_gen_p5 (int ) ;
 int bnxt_qplib_ring_creq_db (int ,int ,int ,int ,int) ;
 int free_irq (int ,struct bnxt_qplib_rcfw*) ;
 int synchronize_irq (int ) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

void bnxt_qplib_rcfw_stop_irq(struct bnxt_qplib_rcfw *rcfw, bool kill)
{
 bool gen_p5 = bnxt_qplib_is_chip_gen_p5(rcfw->res->cctx);

 tasklet_disable(&rcfw->worker);

 bnxt_qplib_ring_creq_db(rcfw->creq_bar_reg_iomem, rcfw->creq.cons,
    rcfw->creq.max_elements, rcfw->creq_ring_id,
    gen_p5);

 synchronize_irq(rcfw->vector);
 if (kill)
  tasklet_kill(&rcfw->worker);

 if (rcfw->requested) {
  free_irq(rcfw->vector, rcfw);
  rcfw->requested = 0;
 }
}
