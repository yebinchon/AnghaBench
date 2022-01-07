
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int node; } ;
struct uniphier_mdmac_desc {int dummy; } ;
struct uniphier_mdmac_chan {struct uniphier_mdmac_desc* md; int vc; } ;


 int list_del (int *) ;
 struct uniphier_mdmac_desc* to_uniphier_mdmac_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static struct uniphier_mdmac_desc *
uniphier_mdmac_next_desc(struct uniphier_mdmac_chan *mc)
{
 struct virt_dma_desc *vd;

 vd = vchan_next_desc(&mc->vc);
 if (!vd) {
  mc->md = ((void*)0);
  return ((void*)0);
 }

 list_del(&vd->node);

 mc->md = to_uniphier_mdmac_desc(vd);

 return mc->md;
}
