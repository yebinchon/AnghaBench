
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcm_message {int type; } ;



 int EINVAL ;
 int flexrm_spu_dma_map (struct device*,struct brcm_message*) ;

__attribute__((used)) static int flexrm_dma_map(struct device *dev, struct brcm_message *msg)
{
 if (!dev || !msg)
  return -EINVAL;

 switch (msg->type) {
 case 128:
  return flexrm_spu_dma_map(dev, msg);
 default:
  break;
 }

 return 0;
}
