
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pidff_device {scalar_t__* status_id; int hid; TYPE_3__* block_load; TYPE_2__* block_load_status; int * reports; TYPE_1__* create_new_effect_type; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_5__ {scalar_t__* value; } ;
struct TYPE_4__ {int* value; } ;


 int EIO ;
 int ENOSPC ;
 int HID_REQ_GET_REPORT ;
 int HID_REQ_SET_REPORT ;
 size_t PID_BLOCK_LOAD ;
 size_t PID_BLOCK_LOAD_FULL ;
 size_t PID_BLOCK_LOAD_SUCCESS ;
 size_t PID_CREATE_NEW_EFFECT ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_RAM_POOL_AVAILABLE ;
 int hid_dbg (int ,char*,...) ;
 int hid_err (int ,char*) ;
 int hid_hw_request (int ,int ,int ) ;
 int hid_hw_wait (int ) ;

__attribute__((used)) static int pidff_request_effect_upload(struct pidff_device *pidff, int efnum)
{
 int j;

 pidff->create_new_effect_type->value[0] = efnum;
 hid_hw_request(pidff->hid, pidff->reports[PID_CREATE_NEW_EFFECT],
   HID_REQ_SET_REPORT);
 hid_dbg(pidff->hid, "create_new_effect sent, type: %d\n", efnum);

 pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0] = 0;
 pidff->block_load_status->value[0] = 0;
 hid_hw_wait(pidff->hid);

 for (j = 0; j < 60; j++) {
  hid_dbg(pidff->hid, "pid_block_load requested\n");
  hid_hw_request(pidff->hid, pidff->reports[PID_BLOCK_LOAD],
    HID_REQ_GET_REPORT);
  hid_hw_wait(pidff->hid);
  if (pidff->block_load_status->value[0] ==
      pidff->status_id[PID_BLOCK_LOAD_SUCCESS]) {
   hid_dbg(pidff->hid, "device reported free memory: %d bytes\n",
     pidff->block_load[PID_RAM_POOL_AVAILABLE].value ?
     pidff->block_load[PID_RAM_POOL_AVAILABLE].value[0] : -1);
   return 0;
  }
  if (pidff->block_load_status->value[0] ==
      pidff->status_id[PID_BLOCK_LOAD_FULL]) {
   hid_dbg(pidff->hid, "not enough memory free: %d bytes\n",
    pidff->block_load[PID_RAM_POOL_AVAILABLE].value ?
    pidff->block_load[PID_RAM_POOL_AVAILABLE].value[0] : -1);
   return -ENOSPC;
  }
 }
 hid_err(pidff->hid, "pid_block_load failed 60 times\n");
 return -EIO;
}
