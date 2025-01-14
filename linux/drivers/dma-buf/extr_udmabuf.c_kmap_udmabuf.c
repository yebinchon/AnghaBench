
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udmabuf {struct page** pages; } ;
struct page {int dummy; } ;
struct dma_buf {struct udmabuf* priv; } ;


 void* kmap (struct page*) ;

__attribute__((used)) static void *kmap_udmabuf(struct dma_buf *buf, unsigned long page_num)
{
 struct udmabuf *ubuf = buf->priv;
 struct page *page = ubuf->pages[page_num];

 return kmap(page);
}
