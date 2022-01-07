
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mock_dmabuf {int dummy; } ;
struct dma_buf {struct mock_dmabuf* priv; } ;



__attribute__((used)) static struct mock_dmabuf *to_mock(struct dma_buf *buf)
{
 return buf->priv;
}
