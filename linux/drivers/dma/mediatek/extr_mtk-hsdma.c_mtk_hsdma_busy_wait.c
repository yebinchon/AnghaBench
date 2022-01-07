
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hsdma_device {scalar_t__ base; } ;


 scalar_t__ MTK_HSDMA_GLO ;
 int MTK_HSDMA_GLO_BUSY ;
 int MTK_HSDMA_TIMEOUT_POLL ;
 int MTK_HSDMA_USEC_POLL ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static int mtk_hsdma_busy_wait(struct mtk_hsdma_device *hsdma)
{
 u32 status = 0;

 return readl_poll_timeout(hsdma->base + MTK_HSDMA_GLO, status,
      !(status & MTK_HSDMA_GLO_BUSY),
      MTK_HSDMA_USEC_POLL,
      MTK_HSDMA_TIMEOUT_POLL);
}
