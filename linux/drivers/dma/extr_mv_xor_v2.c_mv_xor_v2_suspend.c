
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv_xor_v2_device {scalar_t__ dma_base; } ;
typedef int pm_message_t ;


 scalar_t__ MV_XOR_V2_DMA_DESQ_STOP_OFF ;
 struct mv_xor_v2_device* platform_get_drvdata (struct platform_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mv_xor_v2_suspend(struct platform_device *dev, pm_message_t state)
{
 struct mv_xor_v2_device *xor_dev = platform_get_drvdata(dev);


 writel(0x1, xor_dev->dma_base + MV_XOR_V2_DMA_DESQ_STOP_OFF);

 return 0;
}
