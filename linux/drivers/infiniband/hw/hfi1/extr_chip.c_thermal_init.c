
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ icode; } ;


 int ASIC_CFG_THERM_POLL_EN ;
 int CR_SBUS ;
 int CR_THERM_INIT ;
 scalar_t__ ICODE_RTL_SILICON ;
 int RESET_SBUS_RECEIVER ;
 int SBUS_THERMAL ;
 int SBUS_THERM_MONITOR_MODE ;
 int SBUS_TIMEOUT ;
 int THERM_FAILURE (struct hfi1_devdata*,int,char*) ;
 int WRITE_SBUS_RECEIVER ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 scalar_t__ check_chip_resource (struct hfi1_devdata*,int ,int *) ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int msleep (int) ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;
 int sbus_request_slow (struct hfi1_devdata*,int ,int,int ,int) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static int thermal_init(struct hfi1_devdata *dd)
{
 int ret = 0;

 if (dd->icode != ICODE_RTL_SILICON ||
     check_chip_resource(dd, CR_THERM_INIT, ((void*)0)))
  return ret;

 ret = acquire_chip_resource(dd, CR_SBUS, SBUS_TIMEOUT);
 if (ret) {
  THERM_FAILURE(dd, ret, "Acquire SBus");
  return ret;
 }

 dd_dev_info(dd, "Initializing thermal sensor\n");

 write_csr(dd, ASIC_CFG_THERM_POLL_EN, 0x0);
 msleep(100);


 ret = sbus_request_slow(dd, SBUS_THERMAL, 0x0,
    RESET_SBUS_RECEIVER, 0);
 if (ret) {
  THERM_FAILURE(dd, ret, "Bus Reset");
  goto done;
 }

 ret = sbus_request_slow(dd, SBUS_THERMAL, 0x0,
    WRITE_SBUS_RECEIVER, 0x1);
 if (ret) {
  THERM_FAILURE(dd, ret, "Therm Block Reset");
  goto done;
 }

 ret = sbus_request_slow(dd, SBUS_THERMAL, 0x1,
    WRITE_SBUS_RECEIVER, 0x32);
 if (ret) {
  THERM_FAILURE(dd, ret, "Write Clock Div");
  goto done;
 }

 ret = sbus_request_slow(dd, SBUS_THERMAL, 0x3,
    WRITE_SBUS_RECEIVER,
    SBUS_THERM_MONITOR_MODE);
 if (ret) {
  THERM_FAILURE(dd, ret, "Write Mode Sel");
  goto done;
 }

 ret = sbus_request_slow(dd, SBUS_THERMAL, 0x0,
    WRITE_SBUS_RECEIVER, 0x2);
 if (ret) {
  THERM_FAILURE(dd, ret, "Write Reset Deassert");
  goto done;
 }

 msleep(22);


 write_csr(dd, ASIC_CFG_THERM_POLL_EN, 0x1);


 ret = acquire_chip_resource(dd, CR_THERM_INIT, 0);
 if (ret)
  THERM_FAILURE(dd, ret, "Unable to set thermal init flag");

done:
 release_chip_resource(dd, CR_SBUS);
 return ret;
}
