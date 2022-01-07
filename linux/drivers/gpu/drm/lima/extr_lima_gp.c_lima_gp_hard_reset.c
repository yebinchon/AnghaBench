
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int dev; } ;


 int LIMA_GP_CMD ;
 int LIMA_GP_CMD_RESET ;
 int LIMA_GP_INT_CLEAR ;
 int LIMA_GP_INT_MASK ;
 int LIMA_GP_IRQ_MASK_ALL ;
 int LIMA_GP_IRQ_MASK_USED ;
 int LIMA_GP_PERF_CNT_0_LIMIT ;
 int dev_err (int ,char*) ;
 int gp_write (int ,int) ;
 int lima_gp_hard_reset_poll ;
 int lima_poll_timeout (struct lima_ip*,int ,int,int) ;

__attribute__((used)) static int lima_gp_hard_reset(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int ret;

 gp_write(LIMA_GP_PERF_CNT_0_LIMIT, 0xC0FFE000);
 gp_write(LIMA_GP_INT_MASK, 0);
 gp_write(LIMA_GP_CMD, LIMA_GP_CMD_RESET);
 ret = lima_poll_timeout(ip, lima_gp_hard_reset_poll, 10, 100);
 if (ret) {
  dev_err(dev->dev, "gp hard reset timeout\n");
  return ret;
 }

 gp_write(LIMA_GP_PERF_CNT_0_LIMIT, 0);
 gp_write(LIMA_GP_INT_CLEAR, LIMA_GP_IRQ_MASK_ALL);
 gp_write(LIMA_GP_INT_MASK, LIMA_GP_IRQ_MASK_USED);
 return 0;
}
