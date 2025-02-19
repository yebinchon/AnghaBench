
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_cqdma_pchan {scalar_t__ base; } ;


 scalar_t__ MTK_CQDMA_EN ;
 int MTK_CQDMA_EN_BIT ;
 int MTK_CQDMA_TIMEOUT_POLL ;
 int MTK_CQDMA_USEC_POLL ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static int mtk_cqdma_poll_engine_done(struct mtk_cqdma_pchan *pc, bool atomic)
{
 u32 status = 0;

 if (!atomic)
  return readl_poll_timeout(pc->base + MTK_CQDMA_EN,
       status,
       !(status & MTK_CQDMA_EN_BIT),
       MTK_CQDMA_USEC_POLL,
       MTK_CQDMA_TIMEOUT_POLL);

 return readl_poll_timeout_atomic(pc->base + MTK_CQDMA_EN,
      status,
      !(status & MTK_CQDMA_EN_BIT),
      MTK_CQDMA_USEC_POLL,
      MTK_CQDMA_TIMEOUT_POLL);
}
