
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct mock_dmabuf {int npages; int * pages; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {int size; struct mock_dmabuf* priv; int flags; int * ops; } ;


 int DEFINE_DMA_BUF_EXPORT_INFO (TYPE_1__) ;
 int ENOMEM ;
 struct dma_buf* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dma_buf*) ;
 int O_CLOEXEC ;
 int PAGE_SIZE ;
 int alloc_page (int ) ;
 struct dma_buf* dma_buf_export (TYPE_1__*) ;
 TYPE_1__ exp_info ;
 int kfree (struct mock_dmabuf*) ;
 struct mock_dmabuf* kmalloc (int,int ) ;
 int mock_dmabuf_ops ;
 int put_page (int ) ;

__attribute__((used)) static struct dma_buf *mock_dmabuf(int npages)
{
 struct mock_dmabuf *mock;
 DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 struct dma_buf *dmabuf;
 int i;

 mock = kmalloc(sizeof(*mock) + npages * sizeof(struct page *),
         GFP_KERNEL);
 if (!mock)
  return ERR_PTR(-ENOMEM);

 mock->npages = npages;
 for (i = 0; i < npages; i++) {
  mock->pages[i] = alloc_page(GFP_KERNEL);
  if (!mock->pages[i])
   goto err;
 }

 exp_info.ops = &mock_dmabuf_ops;
 exp_info.size = npages * PAGE_SIZE;
 exp_info.flags = O_CLOEXEC;
 exp_info.priv = mock;

 dmabuf = dma_buf_export(&exp_info);
 if (IS_ERR(dmabuf))
  goto err;

 return dmabuf;

err:
 while (i--)
  put_page(mock->pages[i]);
 kfree(mock);
 return ERR_PTR(-ENOMEM);
}
