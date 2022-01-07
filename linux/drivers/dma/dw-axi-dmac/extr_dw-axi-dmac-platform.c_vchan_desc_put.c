
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int dummy; } ;


 int axi_desc_put (int ) ;
 int vd_to_axi_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void vchan_desc_put(struct virt_dma_desc *vdesc)
{
 axi_desc_put(vd_to_axi_desc(vdesc));
}
