
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct qib_devdata {int flags; int control; int revision; TYPE_3__* pport; TYPE_2__* cspec; int lbus_width; int * kregbase; int z_int_counter; int unit; } ;
struct TYPE_6__ {int lflags_lock; int lflags; TYPE_1__* cpspec; } ;
struct TYPE_5__ {int presets_needed; } ;
struct TYPE_4__ {int ibcddrctrl; scalar_t__ iblnkerrdelta; scalar_t__ ibsymdelta; scalar_t__ ibdeltainprog; } ;


 int IBA7220_IBC_IBTA_1_2_MASK ;
 int QIBL_IB_AUTONEG_FAILED ;
 int QIBL_IB_FORCE_NOTIFY ;
 int QIB_INITTED ;
 int QIB_PRESENT ;
 int QLOGIC_IB_C_RESET ;
 size_t kr_control ;
 size_t kr_revision ;
 int mb () ;
 int msleep (int) ;
 int qib_7220_init_hwerrors (struct qib_devdata*) ;
 int qib_7220_set_intr_state (struct qib_devdata*,int ) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_int_counter (struct qib_devdata*) ;
 int qib_pcie_getcmd (struct qib_devdata*,int *,int *,int *) ;
 scalar_t__ qib_pcie_params (struct qib_devdata*,int ,int *) ;
 int qib_pcie_reenable (struct qib_devdata*,int ,int ,int ) ;
 int qib_reinit_intr (struct qib_devdata*) ;
 int qib_write_kreg (struct qib_devdata*,size_t,unsigned long long) ;
 int readq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeq (int,int *) ;

__attribute__((used)) static int qib_setup_7220_reset(struct qib_devdata *dd)
{
 u64 val;
 int i;
 int ret;
 u16 cmdval;
 u8 int_line, clinesz;
 unsigned long flags;

 qib_pcie_getcmd(dd, &cmdval, &int_line, &clinesz);


 qib_dev_err(dd, "Resetting InfiniPath unit %u\n", dd->unit);


 qib_7220_set_intr_state(dd, 0);

 dd->pport->cpspec->ibdeltainprog = 0;
 dd->pport->cpspec->ibsymdelta = 0;
 dd->pport->cpspec->iblnkerrdelta = 0;






 dd->flags &= ~(QIB_INITTED | QIB_PRESENT);

 dd->z_int_counter = qib_int_counter(dd);
 val = dd->control | QLOGIC_IB_C_RESET;
 writeq(val, &dd->kregbase[kr_control]);
 mb();

 for (i = 1; i <= 5; i++) {





  msleep(1000 + (1 + i) * 2000);

  qib_pcie_reenable(dd, cmdval, int_line, clinesz);





  val = readq(&dd->kregbase[kr_revision]);
  if (val == dd->revision) {
   dd->flags |= QIB_PRESENT;
   ret = qib_reinit_intr(dd);
   goto bail;
  }
 }
 ret = 0;

bail:
 if (ret) {
  if (qib_pcie_params(dd, dd->lbus_width, ((void*)0)))
   qib_dev_err(dd,
    "Reset failed to setup PCIe or interrupts; continuing anyway\n");


  qib_write_kreg(dd, kr_control, 0ULL);


  qib_7220_init_hwerrors(dd);


  if (dd->pport->cpspec->ibcddrctrl & IBA7220_IBC_IBTA_1_2_MASK)
   dd->cspec->presets_needed = 1;
  spin_lock_irqsave(&dd->pport->lflags_lock, flags);
  dd->pport->lflags |= QIBL_IB_FORCE_NOTIFY;
  dd->pport->lflags &= ~QIBL_IB_AUTONEG_FAILED;
  spin_unlock_irqrestore(&dd->pport->lflags_lock, flags);
 }

 return ret;
}
