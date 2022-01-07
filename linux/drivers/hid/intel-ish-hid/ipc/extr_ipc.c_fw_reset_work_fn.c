
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {int recvd_hw_ready; int devc; int wait_hw_ready; } ;


 int TIMEOUT_FOR_HW_RDY_MS ;
 int dev_err (int ,char*,int) ;
 int ish_fw_reset_handler (TYPE_1__*) ;
 TYPE_1__* ishtp_dev ;
 int ishtp_reset_compl_handler (TYPE_1__*) ;
 int msleep_interruptible (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void fw_reset_work_fn(struct work_struct *unused)
{
 int rv;

 rv = ish_fw_reset_handler(ishtp_dev);
 if (!rv) {

  msleep_interruptible(TIMEOUT_FOR_HW_RDY_MS);
  ishtp_dev->recvd_hw_ready = 1;
  wake_up_interruptible(&ishtp_dev->wait_hw_ready);


  ishtp_reset_compl_handler(ishtp_dev);
 } else
  dev_err(ishtp_dev->devc, "[ishtp-ish]: FW reset failed (%d)\n",
   rv);
}
