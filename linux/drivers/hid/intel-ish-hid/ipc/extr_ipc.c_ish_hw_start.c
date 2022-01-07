
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int devc; int recvd_hw_ready; int wait_hw_ready; } ;


 int ENODEV ;
 int HZ ;
 int dev_err (int ,char*) ;
 int ish_set_host_rdy (struct ishtp_device*) ;
 int ish_wakeup (struct ishtp_device*) ;
 int set_host_ready (struct ishtp_device*) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;

int ish_hw_start(struct ishtp_device *dev)
{
 ish_set_host_rdy(dev);

 set_host_ready(dev);


 ish_wakeup(dev);


 if (!dev->recvd_hw_ready)
  wait_event_interruptible_timeout(dev->wait_hw_ready,
       dev->recvd_hw_ready,
       10 * HZ);

 if (!dev->recvd_hw_ready) {
  dev_err(dev->devc,
   "[ishtp-ish]: Timed out waiting for FW-initiated reset\n");
  return -ENODEV;
 }

 return 0;
}
