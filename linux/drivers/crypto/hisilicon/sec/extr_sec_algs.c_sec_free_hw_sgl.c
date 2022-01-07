
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_hw_sgl {int next_sgl; struct sec_hw_sgl* next; } ;
struct sec_dev_info {int hw_sgl_pool; } ;
typedef int dma_addr_t ;


 int dma_pool_free (int ,struct sec_hw_sgl*,int ) ;

__attribute__((used)) static void sec_free_hw_sgl(struct sec_hw_sgl *hw_sgl,
       dma_addr_t psec_sgl, struct sec_dev_info *info)
{
 struct sec_hw_sgl *sgl_current, *sgl_next;
 dma_addr_t sgl_next_dma;

 sgl_current = hw_sgl;
 while (sgl_current) {
  sgl_next = sgl_current->next;
  sgl_next_dma = sgl_current->next_sgl;

  dma_pool_free(info->hw_sgl_pool, sgl_current, psec_sgl);

  sgl_current = sgl_next;
  psec_sgl = sgl_next_dma;
 }
}
