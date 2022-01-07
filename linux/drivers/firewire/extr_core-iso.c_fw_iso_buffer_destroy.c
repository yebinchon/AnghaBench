
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_buffer {int page_count_mapped; int page_count; int * pages; int direction; } ;
struct fw_card {int device; } ;
typedef int dma_addr_t ;


 int PAGE_SIZE ;
 int __free_page (int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int page_private (int ) ;

void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer,
      struct fw_card *card)
{
 int i;
 dma_addr_t address;

 for (i = 0; i < buffer->page_count_mapped; i++) {
  address = page_private(buffer->pages[i]);
  dma_unmap_page(card->device, address,
          PAGE_SIZE, buffer->direction);
 }
 for (i = 0; i < buffer->page_count; i++)
  __free_page(buffer->pages[i]);

 kfree(buffer->pages);
 buffer->pages = ((void*)0);
 buffer->page_count = 0;
 buffer->page_count_mapped = 0;
}
