
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_pportdata {int hw_pidx; TYPE_1__* dd; } ;
struct TYPE_2__ {int (* f_gpio_mod ) (TYPE_1__*,int ,int ,int ) ;} ;


 int QSFP_GPIO_MOD_PRS_N ;
 int QSFP_GPIO_PORT2_SHIFT ;
 int stub1 (TYPE_1__*,int ,int ,int ) ;

int qib_qsfp_mod_present(struct qib_pportdata *ppd)
{
 u32 mask;
 int ret;

 mask = QSFP_GPIO_MOD_PRS_N <<
  (ppd->hw_pidx * QSFP_GPIO_PORT2_SHIFT);
 ret = ppd->dd->f_gpio_mod(ppd->dd, 0, 0, 0);

 return !((ret & mask) >>
   ((ppd->hw_pidx * QSFP_GPIO_PORT2_SHIFT) + 3));
}
