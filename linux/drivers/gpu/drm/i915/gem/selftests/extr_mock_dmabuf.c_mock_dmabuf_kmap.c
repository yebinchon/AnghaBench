
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mock_dmabuf {int * pages; } ;
struct dma_buf {int dummy; } ;


 void* kmap (int ) ;
 struct mock_dmabuf* to_mock (struct dma_buf*) ;

__attribute__((used)) static void *mock_dmabuf_kmap(struct dma_buf *dma_buf, unsigned long page_num)
{
 struct mock_dmabuf *mock = to_mock(dma_buf);

 return kmap(mock->pages[page_num]);
}
