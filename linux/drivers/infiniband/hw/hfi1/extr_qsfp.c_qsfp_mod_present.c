
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; } ;


 int ASIC_QSFP1_IN ;
 int ASIC_QSFP2_IN ;
 int QSFP_HFI0_MODPRST_N ;
 int read_csr (struct hfi1_devdata*,int ) ;

int qsfp_mod_present(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;
 u64 reg;

 reg = read_csr(dd, dd->hfi1_id ? ASIC_QSFP2_IN : ASIC_QSFP1_IN);
 return !(reg & QSFP_HFI0_MODPRST_N);
}
