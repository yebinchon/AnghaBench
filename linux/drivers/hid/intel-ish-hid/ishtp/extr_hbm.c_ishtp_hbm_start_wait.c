
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int hbm_state; int devc; int wait_hbm_recvd_msg; } ;


 int ETIMEDOUT ;
 int HZ ;
 int ISHTP_HBM_IDLE ;
 int ISHTP_HBM_START ;
 int ISHTP_HBM_STARTED ;
 int ISHTP_INTEROP_TIMEOUT ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int,int ) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int ishtp_hbm_start_wait(struct ishtp_device *dev)
{
 int ret;

 if (dev->hbm_state > ISHTP_HBM_START)
  return 0;

 dev_dbg(dev->devc, "Going to wait for ishtp start. hbm_state=%08X\n",
  dev->hbm_state);
 ret = wait_event_interruptible_timeout(dev->wait_hbm_recvd_msg,
     dev->hbm_state >= ISHTP_HBM_STARTED,
     (ISHTP_INTEROP_TIMEOUT * HZ));

 dev_dbg(dev->devc,
  "Woke up from waiting for ishtp start. hbm_state=%08X\n",
  dev->hbm_state);

 if (ret <= 0 && (dev->hbm_state <= ISHTP_HBM_START)) {
  dev->hbm_state = ISHTP_HBM_IDLE;
  dev_err(dev->devc,
  "waiting for ishtp start failed. ret=%d hbm_state=%08X\n",
   ret, dev->hbm_state);
  return -ETIMEDOUT;
 }
 return 0;
}
