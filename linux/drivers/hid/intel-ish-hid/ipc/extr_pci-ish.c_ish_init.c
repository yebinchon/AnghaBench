
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int devc; } ;


 int dev_err (int ,char*) ;
 int ish_hw_start (struct ishtp_device*) ;
 int ishtp_start (struct ishtp_device*) ;

__attribute__((used)) static int ish_init(struct ishtp_device *dev)
{
 int ret;


 ret = ish_hw_start(dev);
 if (ret) {
  dev_err(dev->devc, "ISH: hw start failed.\n");
  return ret;
 }


 ret = ishtp_start(dev);
 if (ret) {
  dev_err(dev->devc, "ISHTP: Protocol init failed.\n");
  return ret;
 }

 return 0;
}
