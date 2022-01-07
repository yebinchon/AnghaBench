
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int dev; } ;


 int LIMA_PP_INT_CLEAR ;
 int LIMA_PP_INT_MASK ;
 int LIMA_PP_IRQ_MASK_ALL ;
 int LIMA_PP_IRQ_MASK_USED ;
 int dev_err (int ,char*,int ) ;
 int lima_ip_name (struct lima_ip*) ;
 int lima_poll_timeout (struct lima_ip*,int ,int ,int) ;
 int lima_pp_soft_reset_poll ;
 int pp_write (int ,int ) ;

__attribute__((used)) static int lima_pp_soft_reset_async_wait_one(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int ret;

 ret = lima_poll_timeout(ip, lima_pp_soft_reset_poll, 0, 100);
 if (ret) {
  dev_err(dev->dev, "pp %s reset time out\n", lima_ip_name(ip));
  return ret;
 }

 pp_write(LIMA_PP_INT_CLEAR, LIMA_PP_IRQ_MASK_ALL);
 pp_write(LIMA_PP_INT_MASK, LIMA_PP_IRQ_MASK_USED);
 return 0;
}
