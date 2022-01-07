
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_dma_device {scalar_t__ base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void stm32_dma_write(struct stm32_dma_device *dmadev, u32 reg, u32 val)
{
 writel_relaxed(val, dmadev->base + reg);
}
