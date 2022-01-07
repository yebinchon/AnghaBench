
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int dummy; } ;


 int dw_edma_free_desc (int ) ;
 int vd2dw_edma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void vchan_free_desc(struct virt_dma_desc *vdesc)
{
 dw_edma_free_desc(vd2dw_edma_desc(vdesc));
}
