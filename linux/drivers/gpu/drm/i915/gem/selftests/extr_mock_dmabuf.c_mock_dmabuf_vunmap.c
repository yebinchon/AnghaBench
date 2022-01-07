
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mock_dmabuf {int npages; } ;
struct dma_buf {int dummy; } ;


 struct mock_dmabuf* to_mock (struct dma_buf*) ;
 int vm_unmap_ram (void*,int ) ;

__attribute__((used)) static void mock_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
{
 struct mock_dmabuf *mock = to_mock(dma_buf);

 vm_unmap_ram(vaddr, mock->npages);
}
