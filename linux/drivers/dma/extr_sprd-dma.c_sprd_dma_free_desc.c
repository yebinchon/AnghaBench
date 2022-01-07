
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int dummy; } ;
struct sprd_dma_desc {int dummy; } ;


 int kfree (struct sprd_dma_desc*) ;
 struct sprd_dma_desc* to_sprd_dma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void sprd_dma_free_desc(struct virt_dma_desc *vd)
{
 struct sprd_dma_desc *sdesc = to_sprd_dma_desc(vd);

 kfree(sdesc);
}
