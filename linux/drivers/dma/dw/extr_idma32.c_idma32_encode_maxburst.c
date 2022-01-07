
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_dma_chan {int dummy; } ;


 int fls (int) ;

__attribute__((used)) static void idma32_encode_maxburst(struct dw_dma_chan *dwc, u32 *maxburst)
{
 *maxburst = *maxburst > 1 ? fls(*maxburst) - 1 : 0;
}
