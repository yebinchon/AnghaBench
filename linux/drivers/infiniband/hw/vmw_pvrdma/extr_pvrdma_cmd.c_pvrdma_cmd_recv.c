
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ack; } ;
union pvrdma_cmd_resp {TYPE_2__ hdr; } ;
struct pvrdma_dev {TYPE_1__* pdev; int cmd_lock; int resp_slot; int cmd_done; } ;
struct TYPE_3__ {int dev; } ;


 int EFAULT ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 int PVRDMA_CMD_TIMEOUT ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 int memcpy (union pvrdma_cmd_resp*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static inline int pvrdma_cmd_recv(struct pvrdma_dev *dev,
      union pvrdma_cmd_resp *resp,
      unsigned resp_code)
{
 int err;

 dev_dbg(&dev->pdev->dev, "receive response from device\n");

 err = wait_for_completion_interruptible_timeout(&dev->cmd_done,
   msecs_to_jiffies(PVRDMA_CMD_TIMEOUT));
 if (err == 0 || err == -ERESTARTSYS) {
  dev_warn(&dev->pdev->dev,
    "completion timeout or interrupted\n");
  return -ETIMEDOUT;
 }

 spin_lock(&dev->cmd_lock);
 memcpy(resp, dev->resp_slot, sizeof(*resp));
 spin_unlock(&dev->cmd_lock);

 if (resp->hdr.ack != resp_code) {
  dev_warn(&dev->pdev->dev,
    "unknown response %#x expected %#x\n",
    resp->hdr.ack, resp_code);
  return -EFAULT;
 }

 return 0;
}
