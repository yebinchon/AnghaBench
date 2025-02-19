
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int OCRDMA_MAX_Q_PAGES ;
 int OCRDMA_MAX_Q_PAGE_SIZE_CNT ;
 int OCRDMA_Q_PAGE_BASE_SIZE ;
 int roundup (int,int) ;
 int roundup_pow_of_two (int) ;

__attribute__((used)) static int ocrdma_build_q_conf(u32 *num_entries, int entry_size,
          int *num_pages, int *page_size)
{
 int i;
 int mem_size;

 *num_entries = roundup_pow_of_two(*num_entries);
 mem_size = *num_entries * entry_size;

 for (i = 0; i < OCRDMA_MAX_Q_PAGE_SIZE_CNT; i++) {
  if (mem_size <= (OCRDMA_Q_PAGE_BASE_SIZE << i))
   break;
 }
 if (i >= OCRDMA_MAX_Q_PAGE_SIZE_CNT)
  return -EINVAL;
 mem_size = roundup(mem_size,
         ((OCRDMA_Q_PAGE_BASE_SIZE << i) / OCRDMA_MAX_Q_PAGES));
 *num_pages =
     mem_size / ((OCRDMA_Q_PAGE_BASE_SIZE << i) / OCRDMA_MAX_Q_PAGES);
 *page_size = ((OCRDMA_Q_PAGE_BASE_SIZE << i) / OCRDMA_MAX_Q_PAGES);
 *num_entries = mem_size / entry_size;
 return 0;
}
