
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int serdes_first_init_done; } ;


 scalar_t__ qib_sd7220_ib_vfy (struct qib_devdata*,struct firmware const*) ;

__attribute__((used)) static int qib_ibsd_ucode_loaded(struct qib_pportdata *ppd,
     const struct firmware *fw)
{
 struct qib_devdata *dd = ppd->dd;

 if (!dd->cspec->serdes_first_init_done &&
     qib_sd7220_ib_vfy(dd, fw) > 0)
  dd->cspec->serdes_first_init_done = 1;
 return dd->cspec->serdes_first_init_done;
}
