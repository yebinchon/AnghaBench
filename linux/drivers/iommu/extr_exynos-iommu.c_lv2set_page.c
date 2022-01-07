
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysmmu_pte_t ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int EADDRINUSE ;
 int SPAGES_PER_LPAGE ;
 size_t SPAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int dma_dev ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;
 int lv2ent_fault (int *) ;
 int memset (int *,int ,int) ;
 int mk_lv2ent_lpage (int ,int) ;
 int mk_lv2ent_spage (int ,int) ;
 int update_pte (int *,int ) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static int lv2set_page(sysmmu_pte_t *pent, phys_addr_t paddr, size_t size,
         int prot, short *pgcnt)
{
 if (size == SPAGE_SIZE) {
  if (WARN_ON(!lv2ent_fault(pent)))
   return -EADDRINUSE;

  update_pte(pent, mk_lv2ent_spage(paddr, prot));
  *pgcnt -= 1;
 } else {
  int i;
  dma_addr_t pent_base = virt_to_phys(pent);

  dma_sync_single_for_cpu(dma_dev, pent_base,
     sizeof(*pent) * SPAGES_PER_LPAGE,
     DMA_TO_DEVICE);
  for (i = 0; i < SPAGES_PER_LPAGE; i++, pent++) {
   if (WARN_ON(!lv2ent_fault(pent))) {
    if (i > 0)
     memset(pent - i, 0, sizeof(*pent) * i);
    return -EADDRINUSE;
   }

   *pent = mk_lv2ent_lpage(paddr, prot);
  }
  dma_sync_single_for_device(dma_dev, pent_base,
        sizeof(*pent) * SPAGES_PER_LPAGE,
        DMA_TO_DEVICE);
  *pgcnt -= SPAGES_PER_LPAGE;
 }

 return 0;
}
