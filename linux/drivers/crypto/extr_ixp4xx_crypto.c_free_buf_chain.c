
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct buffer_desc {int dir; int buf_len; int phys_next; struct buffer_desc* next; } ;
typedef int dma_addr_t ;


 int buffer_pool ;
 int dma_pool_free (int ,struct buffer_desc*,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

__attribute__((used)) static void free_buf_chain(struct device *dev, struct buffer_desc *buf,
      dma_addr_t phys)
{
 while (buf) {
  struct buffer_desc *buf1;
  u32 phys1;

  buf1 = buf->next;
  phys1 = buf->phys_next;
  dma_unmap_single(dev, buf->phys_next, buf->buf_len, buf->dir);
  dma_pool_free(buffer_pool, buf, phys);
  buf = buf1;
  phys = phys1;
 }
}
