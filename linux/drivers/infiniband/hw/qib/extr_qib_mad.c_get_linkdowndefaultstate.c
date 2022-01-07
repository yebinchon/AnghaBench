
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {scalar_t__ (* f_get_ib_cfg ) (struct qib_pportdata*,int ) ;} ;


 scalar_t__ IB_LINKINITCMD_SLEEP ;
 int QIB_IB_CFG_LINKDEFAULT ;
 scalar_t__ stub1 (struct qib_pportdata*,int ) ;

__attribute__((used)) static int get_linkdowndefaultstate(struct qib_pportdata *ppd)
{
 return ppd->dd->f_get_ib_cfg(ppd, QIB_IB_CFG_LINKDEFAULT) ==
  IB_LINKINITCMD_SLEEP;
}
