
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcm_message {int type; } ;



 int flexrm_spu_dma_unmap (struct device*,struct brcm_message*) ;

__attribute__((used)) static void flexrm_dma_unmap(struct device *dev, struct brcm_message *msg)
{
 if (!dev || !msg)
  return;

 switch (msg->type) {
 case 128:
  flexrm_spu_dma_unmap(dev, msg);
  break;
 default:
  break;
 }
}
