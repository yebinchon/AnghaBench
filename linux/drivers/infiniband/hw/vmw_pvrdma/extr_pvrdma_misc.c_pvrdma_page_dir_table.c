
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvrdma_page_dir {int ** tables; } ;


 size_t PVRDMA_PAGE_DIR_TABLE (int ) ;

__attribute__((used)) static u64 *pvrdma_page_dir_table(struct pvrdma_page_dir *pdir, u64 idx)
{
 return pdir->tables[PVRDMA_PAGE_DIR_TABLE(idx)];
}
