
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {size_t hfi1_id; } ;


 int CR_SBUS ;
 int NUM_FABRIC_SERDES ;
 int SBUS_TIMEOUT ;
 int SPICO_FABRIC ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 int all_fabric_serdes_broadcast ;
 int clear_sbus_fast_mode (struct hfi1_devdata*) ;
 int dump_fw_version (struct hfi1_devdata*) ;
 int * fabric_serdes_addrs ;
 int * fabric_serdes_broadcast ;
 int fw_8051 ;
 scalar_t__ fw_8051_load ;
 int fw_fabric ;
 scalar_t__ fw_fabric_serdes_load ;
 int load_8051_firmware (struct hfi1_devdata*,int *) ;
 int load_fabric_serdes_firmware (struct hfi1_devdata*,int *) ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;
 scalar_t__ retry_firmware (struct hfi1_devdata*,int) ;
 int set_sbus_fast_mode (struct hfi1_devdata*) ;
 int set_serdes_broadcast (struct hfi1_devdata*,int ,int ,int ,int ) ;
 int turn_off_spicos (struct hfi1_devdata*,int ) ;

int load_firmware(struct hfi1_devdata *dd)
{
 int ret;

 if (fw_fabric_serdes_load) {
  ret = acquire_chip_resource(dd, CR_SBUS, SBUS_TIMEOUT);
  if (ret)
   return ret;

  set_sbus_fast_mode(dd);

  set_serdes_broadcast(dd, all_fabric_serdes_broadcast,
         fabric_serdes_broadcast[dd->hfi1_id],
         fabric_serdes_addrs[dd->hfi1_id],
         NUM_FABRIC_SERDES);
  turn_off_spicos(dd, SPICO_FABRIC);
  do {
   ret = load_fabric_serdes_firmware(dd, &fw_fabric);
  } while (retry_firmware(dd, ret));

  clear_sbus_fast_mode(dd);
  release_chip_resource(dd, CR_SBUS);
  if (ret)
   return ret;
 }

 if (fw_8051_load) {
  do {
   ret = load_8051_firmware(dd, &fw_8051);
  } while (retry_firmware(dd, ret));
  if (ret)
   return ret;
 }

 dump_fw_version(dd);
 return 0;
}
