
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resend; scalar_t__ mbox; scalar_t__ bmi; scalar_t__ efl; scalar_t__ lbc; scalar_t__ pem; scalar_t__ pom; scalar_t__ nps_pkt; scalar_t__ nps_core; } ;
union nps_core_int_active {int value; TYPE_1__ s; } ;
struct nitrox_q_vector {struct nitrox_device* ndev; } ;
struct nitrox_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NPS_CORE_INT_ACTIVE ;
 int clear_bmi_err_intr (struct nitrox_device*) ;
 int clear_efl_err_intr (struct nitrox_device*) ;
 int clear_lbc_err_intr (struct nitrox_device*) ;
 int clear_nps_core_err_intr (struct nitrox_device*) ;
 int clear_nps_pkt_err_intr (struct nitrox_device*) ;
 int clear_pem_err_intr (struct nitrox_device*) ;
 int clear_pom_err_intr (struct nitrox_device*) ;
 int nitrox_pf2vf_mbox_handler (struct nitrox_device*) ;
 int nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,int ) ;

__attribute__((used)) static irqreturn_t nps_core_int_isr(int irq, void *data)
{
 struct nitrox_q_vector *qvec = data;
 struct nitrox_device *ndev = qvec->ndev;
 union nps_core_int_active core_int;

 core_int.value = nitrox_read_csr(ndev, NPS_CORE_INT_ACTIVE);

 if (core_int.s.nps_core)
  clear_nps_core_err_intr(ndev);

 if (core_int.s.nps_pkt)
  clear_nps_pkt_err_intr(ndev);

 if (core_int.s.pom)
  clear_pom_err_intr(ndev);

 if (core_int.s.pem)
  clear_pem_err_intr(ndev);

 if (core_int.s.lbc)
  clear_lbc_err_intr(ndev);

 if (core_int.s.efl)
  clear_efl_err_intr(ndev);

 if (core_int.s.bmi)
  clear_bmi_err_intr(ndev);


 if (core_int.s.mbox)
  nitrox_pf2vf_mbox_handler(ndev);


 core_int.s.resend = 1;
 nitrox_write_csr(ndev, NPS_CORE_INT_ACTIVE, core_int.value);

 return IRQ_HANDLED;
}
