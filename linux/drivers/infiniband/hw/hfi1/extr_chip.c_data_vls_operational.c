
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hfi1_pportdata {int vls_supported; TYPE_2__* dd; int actual_vls_operational; } ;
struct TYPE_4__ {TYPE_1__* vld; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;


 scalar_t__ SEND_CM_CREDIT_VL ;
 scalar_t__ read_csr (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static inline bool data_vls_operational(struct hfi1_pportdata *ppd)
{
 int i;
 u64 reg;

 if (!ppd->actual_vls_operational)
  return 0;

 for (i = 0; i < ppd->vls_supported; i++) {
  reg = read_csr(ppd->dd, SEND_CM_CREDIT_VL + (8 * i));
  if ((reg && !ppd->dd->vld[i].mtu) ||
      (!reg && ppd->dd->vld[i].mtu))
   return 0;
 }

 return 1;
}
