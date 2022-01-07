
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udmabuf {size_t pagecount; struct udmabuf* pages; } ;
struct dma_buf {struct udmabuf* priv; } ;
typedef size_t pgoff_t ;


 int kfree (struct udmabuf*) ;
 int put_page (struct udmabuf) ;

__attribute__((used)) static void release_udmabuf(struct dma_buf *buf)
{
 struct udmabuf *ubuf = buf->priv;
 pgoff_t pg;

 for (pg = 0; pg < ubuf->pagecount; pg++)
  put_page(ubuf->pages[pg]);
 kfree(ubuf->pages);
 kfree(ubuf);
}
