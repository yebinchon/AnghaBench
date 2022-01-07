
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mock_dmabuf {int npages; int pages; } ;
struct dma_buf {int dummy; } ;


 int PAGE_KERNEL ;
 struct mock_dmabuf* to_mock (struct dma_buf*) ;
 void* vm_map_ram (int ,int ,int ,int ) ;

__attribute__((used)) static void *mock_dmabuf_vmap(struct dma_buf *dma_buf)
{
 struct mock_dmabuf *mock = to_mock(dma_buf);

 return vm_map_ram(mock->pages, mock->npages, 0, PAGE_KERNEL);
}
