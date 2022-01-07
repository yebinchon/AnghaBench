
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ icode; } ;


 int ALT_FW_8051_NAME_ASIC ;
 int ALT_FW_FABRIC_NAME ;
 int ALT_FW_PCIE_NAME ;
 int ALT_FW_SBUS_NAME ;
 int ENOENT ;
 scalar_t__ FW_EMPTY ;
 scalar_t__ FW_ERR ;
 scalar_t__ FW_FINAL ;
 scalar_t__ FW_TRY ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 scalar_t__ ICODE_RTL_SILICON ;
 int cond_resched () ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int dd_dev_warn (struct hfi1_devdata*,char*) ;
 int dispose_one_firmware (int *) ;
 int fw_8051 ;
 scalar_t__ fw_8051_load ;
 int fw_8051_name ;
 int fw_err ;
 int fw_fabric ;
 scalar_t__ fw_fabric_serdes_load ;
 int fw_fabric_serdes_name ;
 int fw_pcie ;
 scalar_t__ fw_pcie_serdes_load ;
 int fw_pcie_serdes_name ;
 int fw_sbus ;
 scalar_t__ fw_sbus_load ;
 int fw_sbus_name ;
 scalar_t__ fw_state ;
 int obtain_one_firmware (struct hfi1_devdata*,int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void __obtain_firmware(struct hfi1_devdata *dd)
{
 int err = 0;

 if (fw_state == FW_FINAL)
  return;
 if (fw_state == FW_ERR)
  return;


retry:
 if (fw_state == FW_TRY) {




  dd_dev_warn(dd, "using alternate firmware names\n");





  cond_resched();
  if (fw_8051_load)
   dispose_one_firmware(&fw_8051);
  if (fw_fabric_serdes_load)
   dispose_one_firmware(&fw_fabric);
  if (fw_sbus_load)
   dispose_one_firmware(&fw_sbus);
  if (fw_pcie_serdes_load)
   dispose_one_firmware(&fw_pcie);
  fw_8051_name = ALT_FW_8051_NAME_ASIC;
  fw_fabric_serdes_name = ALT_FW_FABRIC_NAME;
  fw_sbus_name = ALT_FW_SBUS_NAME;
  fw_pcie_serdes_name = ALT_FW_PCIE_NAME;







  usleep_range(100, 120);
 }

 if (fw_sbus_load) {
  err = obtain_one_firmware(dd, fw_sbus_name, &fw_sbus);
  if (err)
   goto done;
 }

 if (fw_pcie_serdes_load) {
  err = obtain_one_firmware(dd, fw_pcie_serdes_name, &fw_pcie);
  if (err)
   goto done;
 }

 if (fw_fabric_serdes_load) {
  err = obtain_one_firmware(dd, fw_fabric_serdes_name,
       &fw_fabric);
  if (err)
   goto done;
 }

 if (fw_8051_load) {
  err = obtain_one_firmware(dd, fw_8051_name, &fw_8051);
  if (err)
   goto done;
 }

done:
 if (err) {

  if (fw_state == FW_EMPTY && dd->icode == ICODE_RTL_SILICON) {

   fw_state = FW_TRY;
   goto retry;
  }
  dd_dev_err(dd, "unable to obtain working firmware\n");
  fw_state = FW_ERR;
  fw_err = -ENOENT;
 } else {

  if (fw_state == FW_EMPTY &&
      dd->icode != ICODE_FUNCTIONAL_SIMULATOR)
   fw_state = FW_TRY;
  else
   fw_state = FW_FINAL;
 }
}
