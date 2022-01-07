
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int tx; } ;
struct mdc_tx_desc {int dummy; } ;


 int kfree (struct mdc_tx_desc*) ;
 int mdc_list_desc_free (struct mdc_tx_desc*) ;
 struct mdc_tx_desc* to_mdc_desc (int *) ;

__attribute__((used)) static void mdc_desc_free(struct virt_dma_desc *vd)
{
 struct mdc_tx_desc *mdesc = to_mdc_desc(&vd->tx);

 mdc_list_desc_free(mdesc);
 kfree(mdesc);
}
