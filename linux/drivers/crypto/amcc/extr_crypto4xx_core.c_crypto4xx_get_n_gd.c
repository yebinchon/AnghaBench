
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_device {int gdr_head; int gdr_tail; } ;


 int ERING_WAS_FULL ;
 int PPC4XX_NUM_GD ;

__attribute__((used)) static u32 crypto4xx_get_n_gd(struct crypto4xx_device *dev, int n)
{
 u32 retval;
 u32 tmp;

 if (n >= PPC4XX_NUM_GD)
  return ERING_WAS_FULL;

 retval = dev->gdr_head;
 tmp = (dev->gdr_head + n) % PPC4XX_NUM_GD;
 if (dev->gdr_head > dev->gdr_tail) {
  if (tmp < dev->gdr_head && tmp >= dev->gdr_tail)
   return ERING_WAS_FULL;
 } else if (dev->gdr_head < dev->gdr_tail) {
  if (tmp < dev->gdr_head || tmp >= dev->gdr_tail)
   return ERING_WAS_FULL;
 }
 dev->gdr_head = tmp;

 return retval;
}
