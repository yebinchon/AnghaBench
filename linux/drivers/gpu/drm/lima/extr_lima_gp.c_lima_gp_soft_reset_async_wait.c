
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int async_reset; } ;
struct lima_ip {TYPE_1__ data; scalar_t__ iomem; struct lima_device* dev; } ;
struct lima_device {int dev; } ;


 int LIMA_GP_INT_CLEAR ;
 int LIMA_GP_INT_MASK ;
 scalar_t__ LIMA_GP_INT_RAWSTAT ;
 int LIMA_GP_IRQ_MASK_ALL ;
 int LIMA_GP_IRQ_MASK_USED ;
 int LIMA_GP_IRQ_RESET_COMPLETED ;
 int dev_err (int ,char*) ;
 int gp_write (int ,int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int) ;

__attribute__((used)) static int lima_gp_soft_reset_async_wait(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;
 u32 v;

 if (!ip->data.async_reset)
  return 0;

 err = readl_poll_timeout(ip->iomem + LIMA_GP_INT_RAWSTAT, v,
     v & LIMA_GP_IRQ_RESET_COMPLETED,
     0, 100);
 if (err) {
  dev_err(dev->dev, "gp soft reset time out\n");
  return err;
 }

 gp_write(LIMA_GP_INT_CLEAR, LIMA_GP_IRQ_MASK_ALL);
 gp_write(LIMA_GP_INT_MASK, LIMA_GP_IRQ_MASK_USED);

 ip->data.async_reset = 0;
 return 0;
}
