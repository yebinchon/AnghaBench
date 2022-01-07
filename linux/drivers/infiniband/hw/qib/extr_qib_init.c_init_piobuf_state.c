
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_devdata {int num_pports; int cfgctxts; int first_user_ctxt; int pbufsctxt; int pioavregs; int (* f_initvl15_bufs ) (struct qib_devdata*) ;scalar_t__ piobcnt4k; scalar_t__ piobcnt2k; scalar_t__* pioavailshadow; int * pioavailregs_dma; scalar_t__ lastctxt_piobuf; scalar_t__ ctxts_extrabuf; scalar_t__ pport; int (* f_sendctrl ) (scalar_t__,int ) ;} ;
typedef int __le64 ;


 int ARRAY_SIZE (scalar_t__*) ;
 int QIB_SENDCTRL_DISARM_ALL ;
 int QIB_SENDCTRL_FLUSH ;
 int TXCHK_CHG_TYPE_KERN ;
 scalar_t__ le64_to_cpu (int ) ;
 int qib_chg_pioavailkernel (struct qib_devdata*,int ,scalar_t__,int ,int *) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,int ) ;
 int stub3 (struct qib_devdata*) ;

__attribute__((used)) static void init_piobuf_state(struct qib_devdata *dd)
{
 int i, pidx;
 u32 uctxts;
 dd->f_sendctrl(dd->pport, QIB_SENDCTRL_DISARM_ALL);
 for (pidx = 0; pidx < dd->num_pports; ++pidx)
  dd->f_sendctrl(dd->pport + pidx, QIB_SENDCTRL_FLUSH);







 uctxts = dd->cfgctxts - dd->first_user_ctxt;
 dd->ctxts_extrabuf = dd->pbufsctxt ?
  dd->lastctxt_piobuf - (dd->pbufsctxt * uctxts) : 0;
 for (i = 0; i < dd->pioavregs; i++) {
  __le64 tmp;

  tmp = dd->pioavailregs_dma[i];





  dd->pioavailshadow[i] = le64_to_cpu(tmp);
 }
 while (i < ARRAY_SIZE(dd->pioavailshadow))
  dd->pioavailshadow[i++] = 0;


 qib_chg_pioavailkernel(dd, 0, dd->piobcnt2k + dd->piobcnt4k,
          TXCHK_CHG_TYPE_KERN, ((void*)0));
 dd->f_initvl15_bufs(dd);
}
