
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned long page_link; unsigned int length; int dma_address; int offset; } ;
typedef int loff_t ;


 int offset_in_page (void*) ;
 scalar_t__ virt_to_page (void*) ;

__attribute__((used)) static void __sg_set_buf(struct scatterlist *sg,
    void *addr, unsigned int len, loff_t it)
{
 sg->page_link = (unsigned long)virt_to_page(addr);
 sg->offset = offset_in_page(addr);
 sg->length = len;
 sg->dma_address = it;
}
