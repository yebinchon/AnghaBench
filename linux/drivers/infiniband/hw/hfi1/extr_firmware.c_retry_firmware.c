
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 scalar_t__ FW_FINAL ;
 scalar_t__ FW_TRY ;
 int __obtain_firmware (struct hfi1_devdata*) ;
 int fw_mutex ;
 scalar_t__ fw_state ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int retry_firmware(struct hfi1_devdata *dd, int load_result)
{
 int retry;

 mutex_lock(&fw_mutex);

 if (load_result == 0) {




  if (fw_state == FW_TRY)
   fw_state = FW_FINAL;
  retry = 0;
 } else if (fw_state == FW_TRY) {

  __obtain_firmware(dd);
  retry = (fw_state == FW_FINAL);
 } else {

  retry = 0;
 }

 mutex_unlock(&fw_mutex);
 return retry;
}
