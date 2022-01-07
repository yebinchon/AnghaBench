
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_device {int dummy; } ;


 int mic_dma_uninit (struct mic_dma_device*) ;

__attribute__((used)) static void mic_dma_dev_unreg(struct mic_dma_device *mic_dma_dev)
{
 mic_dma_uninit(mic_dma_dev);
}
