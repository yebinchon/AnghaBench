
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_buffer {int page_count; int ** pages; scalar_t__ page_count_mapped; } ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int * alloc_page (int) ;
 int fw_iso_buffer_destroy (struct fw_iso_buffer*,int *) ;
 int ** kmalloc_array (int,int,int) ;

int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count)
{
 int i;

 buffer->page_count = 0;
 buffer->page_count_mapped = 0;
 buffer->pages = kmalloc_array(page_count, sizeof(buffer->pages[0]),
          GFP_KERNEL);
 if (buffer->pages == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < page_count; i++) {
  buffer->pages[i] = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
  if (buffer->pages[i] == ((void*)0))
   break;
 }
 buffer->page_count = i;
 if (i < page_count) {
  fw_iso_buffer_destroy(buffer, ((void*)0));
  return -ENOMEM;
 }

 return 0;
}
