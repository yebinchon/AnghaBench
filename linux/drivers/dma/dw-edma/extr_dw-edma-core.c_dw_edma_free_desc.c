
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_edma_desc {int dummy; } ;


 int dw_edma_free_chunk (struct dw_edma_desc*) ;
 int kfree (struct dw_edma_desc*) ;

__attribute__((used)) static void dw_edma_free_desc(struct dw_edma_desc *desc)
{
 dw_edma_free_chunk(desc);
 kfree(desc);
}
