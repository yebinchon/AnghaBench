
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ip {scalar_t__ iomem; struct lima_device* dev; } ;
struct lima_device {int dev; } ;


 scalar_t__ LIMA_L2_CACHE_STATUS ;
 int LIMA_L2_CACHE_STATUS_COMMAND_BUSY ;
 int dev_err (int ,char*) ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int) ;

__attribute__((used)) static int lima_l2_cache_wait_idle(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;
 u32 v;

 err = readl_poll_timeout(ip->iomem + LIMA_L2_CACHE_STATUS, v,
     !(v & LIMA_L2_CACHE_STATUS_COMMAND_BUSY),
     0, 1000);
 if (err) {
  dev_err(dev->dev, "l2 cache wait command timeout\n");
  return err;
 }
 return 0;
}
