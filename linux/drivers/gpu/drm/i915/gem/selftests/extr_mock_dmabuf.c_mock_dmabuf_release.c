
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mock_dmabuf {int npages; int * pages; } ;
struct dma_buf {int dummy; } ;


 int kfree (struct mock_dmabuf*) ;
 int put_page (int ) ;
 struct mock_dmabuf* to_mock (struct dma_buf*) ;

__attribute__((used)) static void mock_dmabuf_release(struct dma_buf *dma_buf)
{
 struct mock_dmabuf *mock = to_mock(dma_buf);
 int i;

 for (i = 0; i < mock->npages; i++)
  put_page(mock->pages[i]);

 kfree(mock);
}
