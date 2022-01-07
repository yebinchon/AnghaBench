
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; } ;


 int ASIC_QSFP1_OUT ;
 int ASIC_QSFP2_OUT ;
 scalar_t__ QSFP_HFI0_RESET_N ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int set_qsfp_int_n (struct hfi1_pportdata*,int) ;
 int set_qsfp_tx (struct hfi1_pportdata*,int ) ;
 int udelay (int) ;
 int wait_for_qsfp_init (struct hfi1_pportdata*) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

int reset_qsfp(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;
 u64 mask, qsfp_mask;


 set_qsfp_int_n(ppd, 0);


 mask = (u64)QSFP_HFI0_RESET_N;

 qsfp_mask = read_csr(dd,
        dd->hfi1_id ? ASIC_QSFP2_OUT : ASIC_QSFP1_OUT);
 qsfp_mask &= ~mask;
 write_csr(dd,
    dd->hfi1_id ? ASIC_QSFP2_OUT : ASIC_QSFP1_OUT, qsfp_mask);

 udelay(10);

 qsfp_mask |= mask;
 write_csr(dd,
    dd->hfi1_id ? ASIC_QSFP2_OUT : ASIC_QSFP1_OUT, qsfp_mask);

 wait_for_qsfp_init(ppd);





 set_qsfp_int_n(ppd, 1);






 return set_qsfp_tx(ppd, 0);
}
