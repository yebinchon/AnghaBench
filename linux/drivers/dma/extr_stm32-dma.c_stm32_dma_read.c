
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_dma_device {scalar_t__ base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 stm32_dma_read(struct stm32_dma_device *dmadev, u32 reg)
{
 return readl_relaxed(dmadev->base + reg);
}
