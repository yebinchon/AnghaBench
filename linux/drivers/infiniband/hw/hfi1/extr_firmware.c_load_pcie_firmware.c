
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {size_t hfi1_id; } ;


 int NUM_PCIE_SERDES ;
 int SPICO_SBUS ;
 int all_pcie_serdes_broadcast ;
 int clear_sbus_fast_mode (struct hfi1_devdata*) ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int fw_pcie ;
 scalar_t__ fw_pcie_serdes_load ;
 int fw_sbus ;
 scalar_t__ fw_sbus_load ;
 int load_pcie_serdes_firmware (struct hfi1_devdata*,int *) ;
 int load_sbus_firmware (struct hfi1_devdata*,int *) ;
 int * pcie_serdes_addrs ;
 int * pcie_serdes_broadcast ;
 scalar_t__ retry_firmware (struct hfi1_devdata*,int) ;
 int set_sbus_fast_mode (struct hfi1_devdata*) ;
 int set_serdes_broadcast (struct hfi1_devdata*,int ,int ,int ,int ) ;
 int turn_off_spicos (struct hfi1_devdata*,int ) ;

int load_pcie_firmware(struct hfi1_devdata *dd)
{
 int ret = 0;


 set_sbus_fast_mode(dd);

 if (fw_sbus_load) {
  turn_off_spicos(dd, SPICO_SBUS);
  do {
   ret = load_sbus_firmware(dd, &fw_sbus);
  } while (retry_firmware(dd, ret));
  if (ret)
   goto done;
 }

 if (fw_pcie_serdes_load) {
  dd_dev_info(dd, "Setting PCIe SerDes broadcast\n");
  set_serdes_broadcast(dd, all_pcie_serdes_broadcast,
         pcie_serdes_broadcast[dd->hfi1_id],
         pcie_serdes_addrs[dd->hfi1_id],
         NUM_PCIE_SERDES);
  do {
   ret = load_pcie_serdes_firmware(dd, &fw_pcie);
  } while (retry_firmware(dd, ret));
  if (ret)
   goto done;
 }

done:
 clear_sbus_fast_mode(dd);

 return ret;
}
