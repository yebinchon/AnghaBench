
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int vmw_prime_map_attach(struct dma_buf *dma_buf,
    struct dma_buf_attachment *attach)
{
 return -ENOSYS;
}
