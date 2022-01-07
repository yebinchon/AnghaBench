
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int* cache; } ;
struct hfi1_pportdata {TYPE_2__* dd; TYPE_1__ qsfp_info; } ;
struct TYPE_4__ {int hfi1_id; } ;


 size_t QSFP_EQ_INFO_OFFS ;
 int qsfp_write (struct hfi1_pportdata*,int ,int,int*,int) ;

__attribute__((used)) static void apply_tx_eq_auto(struct hfi1_pportdata *ppd)
{
 u8 *cache = ppd->qsfp_info.cache;
 u8 tx_eq;

 if (!(cache[QSFP_EQ_INFO_OFFS] & 0x8))
  return;

 tx_eq = cache[(128 * 3) + 241];
 tx_eq &= 0xF0;
 qsfp_write(ppd, ppd->dd->hfi1_id, (256 * 3) + 241, &tx_eq, 1);
}
