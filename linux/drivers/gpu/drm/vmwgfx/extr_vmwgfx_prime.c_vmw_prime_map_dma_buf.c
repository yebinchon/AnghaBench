
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ENOSYS ;
 struct sg_table* ERR_PTR (int ) ;

__attribute__((used)) static struct sg_table *vmw_prime_map_dma_buf(struct dma_buf_attachment *attach,
           enum dma_data_direction dir)
{
 return ERR_PTR(-ENOSYS);
}
