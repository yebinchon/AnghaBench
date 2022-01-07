
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_entry {int hi; } ;
typedef int phys_addr_t ;


 int VTD_PAGE_MASK ;

__attribute__((used)) static phys_addr_t root_entry_uctp(struct root_entry *re)
{
 if (!(re->hi & 1))
  return 0;

 return re->hi & VTD_PAGE_MASK;
}
