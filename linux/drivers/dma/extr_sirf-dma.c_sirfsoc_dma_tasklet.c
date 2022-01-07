
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_dma {int dummy; } ;


 int sirfsoc_dma_process_completed (struct sirfsoc_dma*) ;

__attribute__((used)) static void sirfsoc_dma_tasklet(unsigned long data)
{
 struct sirfsoc_dma *sdma = (void *)data;

 sirfsoc_dma_process_completed(sdma);
}
