
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int dev_state; int devc; } ;


 int ENODEV ;
 int ISHTP_DEV_DISABLED ;
 int dev_err (int ,char*) ;
 scalar_t__ ishtp_hbm_start_wait (struct ishtp_device*) ;
 int ishtp_query_subscribers (struct ishtp_device*) ;

int ishtp_start(struct ishtp_device *dev)
{
 if (ishtp_hbm_start_wait(dev)) {
  dev_err(dev->devc, "HBM haven't started");
  goto err;
 }


 ishtp_query_subscribers(dev);

 return 0;
err:
 dev_err(dev->devc, "link layer initialization failed.\n");
 dev->dev_state = ISHTP_DEV_DISABLED;
 return -ENODEV;
}
