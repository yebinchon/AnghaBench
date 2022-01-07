
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_pportdata {int* pkeys; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK ;
 scalar_t__ RCV_PARTITION_KEY ;
 int RCV_PARTITION_KEY_PARTITION_KEY_A_MASK ;
 int RCV_PARTITION_KEY_PARTITION_KEY_B_SHIFT ;
 int add_rcvctrl (struct hfi1_devdata*,int ) ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int hfi1_get_npkeys (struct hfi1_devdata*) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int) ;

__attribute__((used)) static void set_partition_keys(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;
 u64 reg = 0;
 int i;

 dd_dev_info(dd, "Setting partition keys\n");
 for (i = 0; i < hfi1_get_npkeys(dd); i++) {
  reg |= (ppd->pkeys[i] &
   RCV_PARTITION_KEY_PARTITION_KEY_A_MASK) <<
   ((i % 4) *
    RCV_PARTITION_KEY_PARTITION_KEY_B_SHIFT);

  if ((i % 4) == 3) {
   write_csr(dd, RCV_PARTITION_KEY +
      ((i - 3) * 2), reg);
   reg = 0;
  }
 }


 add_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK);
}
