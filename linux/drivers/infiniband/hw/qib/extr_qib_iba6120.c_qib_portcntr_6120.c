
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef size_t u32 ;
typedef int u16 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int first_user_ctxt; TYPE_1__* cspec; int pcidev; } ;
struct TYPE_2__ {unsigned long long lli_errs; unsigned long long overrun_thresh_errs; unsigned long long pma_sample_status; unsigned long long ibsymsnap; unsigned long long ibsymdelta; unsigned long long iblnkerrsnap; unsigned long long iblnkerrdelta; unsigned long long rxfc_unsupvl_errs; scalar_t__ ibdeltainprog; } ;


 size_t ARRAY_SIZE (int const*) ;
 int cr_portovfl ;







 int qib_devinfo (int ,char*,size_t) ;
 unsigned long long read_6120_creg (struct qib_devdata*,int) ;
 unsigned long long read_6120_creg32 (struct qib_devdata*,int) ;

__attribute__((used)) static u64 qib_portcntr_6120(struct qib_pportdata *ppd, u32 reg)
{
 u64 ret = 0ULL;
 struct qib_devdata *dd = ppd->dd;
 u16 creg;

 static const u16 xlator[] = {
  [166] = 135,
  [148] = 128,
  [160] = 0xffff,
  [159] = 0xffff,
  [158] = 0xffff,
  [152] = 131,
  [167] = 136,
  [164] = 0xffff,
  [163] = 0xffff,
  [157] = 134,
  [156] = 133,
  [149] = 129,
  [155] = 132,
  [154] = 0xffff,
  [153] = 0xffff,
  [180] = 145,
  [176] = 141,
  [178] = 143,
  [181] = 147,
  [175] = 146,
  [171] = 138,
  [170] = 137,
  [151] = 130,
  [174] = 0xffff,
  [179] = 144,
  [173] = 140,
  [172] = 139,
  [168] = 0xffff,
  [165] = 0xffff,
  [162] = 0xffff,
  [161] = 0xffff,
  [150] = 0xffff,
  [177] = 142,
  [169] = 0xffff,
 };

 if (reg >= ARRAY_SIZE(xlator)) {
  qib_devinfo(ppd->dd->pcidev,
    "Unimplemented portcounter %u\n", reg);
  goto done;
 }
 creg = xlator[reg];


 if (reg == 168)
  ret = dd->cspec->lli_errs;
 else if (reg == 174)
  ret = dd->cspec->overrun_thresh_errs;
 else if (reg == 169) {
  int i;


  for (i = 0; i < dd->first_user_ctxt; i++)
   ret += read_6120_creg32(dd, cr_portovfl + i);
 } else if (reg == 161)
  ret = dd->cspec->pma_sample_status;
 if (creg == 0xffff)
  goto done;





 if (creg == 128 || creg == 129 ||
     creg == 135 || creg == 136)
  ret = read_6120_creg(dd, creg);
 else
  ret = read_6120_creg32(dd, creg);
 if (creg == 138) {
  if (dd->cspec->ibdeltainprog)
   ret -= ret - dd->cspec->ibsymsnap;
  ret -= dd->cspec->ibsymdelta;
 } else if (creg == 139) {
  if (dd->cspec->ibdeltainprog)
   ret -= ret - dd->cspec->iblnkerrsnap;
  ret -= dd->cspec->iblnkerrdelta;
 }
 if (reg == 155)
  ret += dd->cspec->rxfc_unsupvl_errs;

done:
 return ret;
}
