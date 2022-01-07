
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; } ;


 int ASIC_QSFP1_CLEAR ;
 int ASIC_QSFP1_MASK ;
 int ASIC_QSFP2_CLEAR ;
 int ASIC_QSFP2_MASK ;
 scalar_t__ QSFP_HFI0_INT_N ;
 scalar_t__ read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,scalar_t__) ;

__attribute__((used)) static void set_qsfp_int_n(struct hfi1_pportdata *ppd, u8 enable)
{
 struct hfi1_devdata *dd = ppd->dd;
 u64 mask;

 mask = read_csr(dd, dd->hfi1_id ? ASIC_QSFP2_MASK : ASIC_QSFP1_MASK);
 if (enable) {




  write_csr(dd, dd->hfi1_id ? ASIC_QSFP2_CLEAR : ASIC_QSFP1_CLEAR,
     QSFP_HFI0_INT_N);
  mask |= (u64)QSFP_HFI0_INT_N;
 } else {
  mask &= ~(u64)QSFP_HFI0_INT_N;
 }
 write_csr(dd, dd->hfi1_id ? ASIC_QSFP2_MASK : ASIC_QSFP1_MASK, mask);
}
