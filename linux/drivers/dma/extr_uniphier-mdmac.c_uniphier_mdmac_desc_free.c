
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int dummy; } ;


 int kfree (int ) ;
 int to_uniphier_mdmac_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void uniphier_mdmac_desc_free(struct virt_dma_desc *vd)
{
 kfree(to_uniphier_mdmac_desc(vd));
}
