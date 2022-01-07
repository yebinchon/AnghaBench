
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_buffer {int direction; int page_count; int page_count_mapped; int * pages; } ;
struct fw_card {int device; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int dma_map_page (int ,int ,int ,int ,int) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int set_page_private (int ,int ) ;

int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
     enum dma_data_direction direction)
{
 dma_addr_t address;
 int i;

 buffer->direction = direction;

 for (i = 0; i < buffer->page_count; i++) {
  address = dma_map_page(card->device, buffer->pages[i],
           0, PAGE_SIZE, direction);
  if (dma_mapping_error(card->device, address))
   break;

  set_page_private(buffer->pages[i], address);
 }
 buffer->page_count_mapped = i;
 if (i < buffer->page_count)
  return -ENOMEM;

 return 0;
}
