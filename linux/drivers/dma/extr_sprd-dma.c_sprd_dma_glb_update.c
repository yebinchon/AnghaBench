
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_dma_dev {int glb_base; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void sprd_dma_glb_update(struct sprd_dma_dev *sdev, u32 reg,
    u32 mask, u32 val)
{
 u32 orig = readl(sdev->glb_base + reg);
 u32 tmp;

 tmp = (orig & ~mask) | val;
 writel(tmp, sdev->glb_base + reg);
}
