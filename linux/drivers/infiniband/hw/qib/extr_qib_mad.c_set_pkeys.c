
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qib_pportdata {size_t hw_pidx; } ;
struct TYPE_4__ {int ibdev; } ;
struct TYPE_5__ {TYPE_1__ rdi; } ;
struct qib_devdata {TYPE_2__ verbs_dev; int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;struct qib_ctxtdata** rcd; struct qib_pportdata* pport; } ;
struct qib_ctxtdata {int* pkeys; } ;
struct TYPE_6__ {int port_num; } ;
struct ib_event {TYPE_3__ element; int * device; int event; } ;


 int ARRAY_SIZE (int*) ;
 int IB_EVENT_PKEY_CHANGE ;
 int QIB_IB_CFG_PKEYS ;
 int add_pkey (struct qib_pportdata*,int) ;
 int ib_dispatch_event (struct ib_event*) ;
 int rm_pkey (struct qib_pportdata*,int) ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static int set_pkeys(struct qib_devdata *dd, u8 port, u16 *pkeys)
{
 struct qib_pportdata *ppd;
 struct qib_ctxtdata *rcd;
 int i;
 int changed = 0;







 ppd = dd->pport + (port - 1);
 rcd = dd->rcd[ppd->hw_pidx];

 for (i = 0; i < ARRAY_SIZE(rcd->pkeys); i++) {
  u16 key = pkeys[i];
  u16 okey = rcd->pkeys[i];

  if (key == okey)
   continue;




  if (okey & 0x7FFF)
   changed |= rm_pkey(ppd, okey);
  if (key & 0x7FFF) {
   int ret = add_pkey(ppd, key);

   if (ret < 0)
    key = 0;
   else
    changed |= ret;
  }
  rcd->pkeys[i] = key;
 }
 if (changed) {
  struct ib_event event;

  (void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PKEYS, 0);

  event.event = IB_EVENT_PKEY_CHANGE;
  event.device = &dd->verbs_dev.rdi.ibdev;
  event.element.port_num = port;
  ib_dispatch_event(&event);
 }
 return 0;
}
