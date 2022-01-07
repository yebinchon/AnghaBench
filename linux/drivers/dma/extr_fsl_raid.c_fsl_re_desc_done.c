
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_re_desc {int async_tx; } ;


 int dma_cookie_complete (int *) ;
 int dma_descriptor_unmap (int *) ;
 int dmaengine_desc_get_callback_invoke (int *,int *) ;

__attribute__((used)) static void fsl_re_desc_done(struct fsl_re_desc *desc)
{
 dma_cookie_complete(&desc->async_tx);
 dma_descriptor_unmap(&desc->async_tx);
 dmaengine_desc_get_callback_invoke(&desc->async_tx, ((void*)0));
}
