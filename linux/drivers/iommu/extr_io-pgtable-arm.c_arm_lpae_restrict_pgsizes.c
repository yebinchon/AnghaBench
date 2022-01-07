
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int pgsize_bitmap; int oas; int ias; } ;


 int PAGE_MASK ;
 int PAGE_SIZE ;

 int const SZ_1G ;
 int const SZ_2M ;
 int const SZ_32M ;

 int const SZ_512M ;

 unsigned long __ffs (int) ;
 unsigned long __fls (int) ;
 void* min (int,unsigned int) ;

__attribute__((used)) static void arm_lpae_restrict_pgsizes(struct io_pgtable_cfg *cfg)
{
 unsigned long granule, page_sizes;
 unsigned int max_addr_bits = 48;
 if (cfg->pgsize_bitmap & PAGE_SIZE)
  granule = PAGE_SIZE;
 else if (cfg->pgsize_bitmap & ~PAGE_MASK)
  granule = 1UL << __fls(cfg->pgsize_bitmap & ~PAGE_MASK);
 else if (cfg->pgsize_bitmap & PAGE_MASK)
  granule = 1UL << __ffs(cfg->pgsize_bitmap & PAGE_MASK);
 else
  granule = 0;

 switch (granule) {
 case 129:
  page_sizes = (129 | SZ_2M | SZ_1G);
  break;
 case 130:
  page_sizes = (130 | SZ_32M);
  break;
 case 128:
  max_addr_bits = 52;
  page_sizes = (128 | SZ_512M);
  if (cfg->oas > 48)
   page_sizes |= 1ULL << 42;
  break;
 default:
  page_sizes = 0;
 }

 cfg->pgsize_bitmap &= page_sizes;
 cfg->ias = min(cfg->ias, max_addr_bits);
 cfg->oas = min(cfg->oas, max_addr_bits);
}
