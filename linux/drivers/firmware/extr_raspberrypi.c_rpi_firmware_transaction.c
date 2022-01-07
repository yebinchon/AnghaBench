
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct rpi_firmware {TYPE_1__ cl; int c; int chan; } ;


 int ETIMEDOUT ;
 int HZ ;
 int MBOX_MSG (int,int) ;
 int WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 int dev_err (int ,char*,int) ;
 int mbox_send_message (int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int transaction_lock ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
rpi_firmware_transaction(struct rpi_firmware *fw, u32 chan, u32 data)
{
 u32 message = MBOX_MSG(chan, data);
 int ret;

 WARN_ON(data & 0xf);

 mutex_lock(&transaction_lock);
 reinit_completion(&fw->c);
 ret = mbox_send_message(fw->chan, &message);
 if (ret >= 0) {
  if (wait_for_completion_timeout(&fw->c, HZ)) {
   ret = 0;
  } else {
   ret = -ETIMEDOUT;
   WARN_ONCE(1, "Firmware transaction timeout");
  }
 } else {
  dev_err(fw->cl.dev, "mbox_send_message returned %d\n", ret);
 }
 mutex_unlock(&transaction_lock);

 return ret;
}
