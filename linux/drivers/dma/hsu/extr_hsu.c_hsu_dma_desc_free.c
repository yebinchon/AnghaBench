
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int dummy; } ;
struct hsu_dma_desc {struct hsu_dma_desc* sg; } ;


 int kfree (struct hsu_dma_desc*) ;
 struct hsu_dma_desc* to_hsu_dma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void hsu_dma_desc_free(struct virt_dma_desc *vdesc)
{
 struct hsu_dma_desc *desc = to_hsu_dma_desc(vdesc);

 kfree(desc->sg);
 kfree(desc);
}
