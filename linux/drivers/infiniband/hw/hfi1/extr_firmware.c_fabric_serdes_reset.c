
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_devdata {size_t hfi1_id; } ;


 int CR_SBUS ;
 int SBUS_TIMEOUT ;
 int SPICO_FABRIC ;
 int WRITE_SBUS_RECEIVER ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 int clear_sbus_fast_mode (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int * fabric_serdes_broadcast ;
 int fw_fabric ;
 int fw_fabric_serdes_load ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int load_fabric_serdes_firmware (struct hfi1_devdata*,int *) ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;
 int sbus_request (struct hfi1_devdata*,int ,int,int ,int) ;
 int set_sbus_fast_mode (struct hfi1_devdata*) ;
 int turn_off_spicos (struct hfi1_devdata*,int ) ;
 int udelay (int) ;

void fabric_serdes_reset(struct hfi1_devdata *dd)
{
 int ret;

 if (!fw_fabric_serdes_load)
  return;

 ret = acquire_chip_resource(dd, CR_SBUS, SBUS_TIMEOUT);
 if (ret) {
  dd_dev_err(dd,
      "Cannot acquire SBus resource to reset fabric SerDes - perhaps you should reboot\n");
  return;
 }
 set_sbus_fast_mode(dd);

 if (is_ax(dd)) {

  u8 ra = fabric_serdes_broadcast[dd->hfi1_id];


  sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);

  udelay(1);

  sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000010);

  sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000002);
 } else {
  turn_off_spicos(dd, SPICO_FABRIC);







  (void)load_fabric_serdes_firmware(dd, &fw_fabric);
 }

 clear_sbus_fast_mode(dd);
 release_chip_resource(dd, CR_SBUS);
}
