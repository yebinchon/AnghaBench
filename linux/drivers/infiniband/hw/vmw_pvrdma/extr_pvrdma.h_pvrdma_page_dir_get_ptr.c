
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct pvrdma_page_dir {void** pages; } ;


 size_t PAGE_SIZE ;

__attribute__((used)) static inline void *pvrdma_page_dir_get_ptr(struct pvrdma_page_dir *pdir,
         u64 offset)
{
 return pdir->pages[offset / PAGE_SIZE] + (offset % PAGE_SIZE);
}
