
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; struct hfi1_pportdata* pport; } ;


 int ASIC_QSFP1_CLEAR ;
 int ASIC_QSFP1_INVERT ;
 int ASIC_QSFP1_MASK ;
 int ASIC_QSFP2_CLEAR ;
 int ASIC_QSFP2_INVERT ;
 int ASIC_QSFP2_MASK ;
 int QSFP1_INT ;
 int QSFP2_INT ;
 int QSFP_HFI0_INT_N ;
 int QSFP_HFI0_MODPRST_N ;
 scalar_t__ qsfp_mod_present (struct hfi1_pportdata*) ;
 int set_intr_bits (struct hfi1_devdata*,int ,int ,int) ;
 int set_qsfp_int_n (struct hfi1_pportdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void init_qsfp_int(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd = dd->pport;
 u64 qsfp_mask;

 qsfp_mask = (u64)(QSFP_HFI0_INT_N | QSFP_HFI0_MODPRST_N);

 write_csr(dd, dd->hfi1_id ? ASIC_QSFP2_CLEAR : ASIC_QSFP1_CLEAR,
    qsfp_mask);
 write_csr(dd, dd->hfi1_id ? ASIC_QSFP2_MASK : ASIC_QSFP1_MASK,
    qsfp_mask);

 set_qsfp_int_n(ppd, 0);


 if (qsfp_mod_present(ppd))
  qsfp_mask &= ~(u64)QSFP_HFI0_MODPRST_N;
 write_csr(dd,
    dd->hfi1_id ? ASIC_QSFP2_INVERT : ASIC_QSFP1_INVERT,
    qsfp_mask);


 if (!dd->hfi1_id)
  set_intr_bits(dd, QSFP1_INT, QSFP1_INT, 1);
 else
  set_intr_bits(dd, QSFP2_INT, QSFP2_INT, 1);
}
