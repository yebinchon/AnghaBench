
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ FW_EMPTY ;
 scalar_t__ FW_ERR ;
 scalar_t__ FW_TRY ;
 int __obtain_firmware (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int fw_err ;
 int fw_mutex ;
 scalar_t__ fw_state ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int obtain_firmware(struct hfi1_devdata *dd)
{
 unsigned long timeout;

 mutex_lock(&fw_mutex);


 timeout = jiffies + msecs_to_jiffies(40000);
 while (fw_state == FW_TRY) {




  if (time_after(jiffies, timeout)) {

   dd_dev_err(dd, "Timeout waiting for firmware try");
   fw_state = FW_ERR;
   fw_err = -ETIMEDOUT;
   break;
  }
  mutex_unlock(&fw_mutex);
  msleep(20);
  mutex_lock(&fw_mutex);
 }



 if (fw_state == FW_EMPTY)
  __obtain_firmware(dd);

 mutex_unlock(&fw_mutex);
 return fw_err;
}
