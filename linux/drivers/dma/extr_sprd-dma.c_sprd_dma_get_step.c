
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;






 int EINVAL ;

__attribute__((used)) static int sprd_dma_get_step(enum dma_slave_buswidth buswidth)
{
 switch (buswidth) {
 case 131:
 case 130:
 case 129:
 case 128:
  return buswidth;

 default:
  return -EINVAL;
 }
}
