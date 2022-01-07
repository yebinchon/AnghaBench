
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long const PAGE_SHIFT ;

__attribute__((used)) static inline int num_user_pages(unsigned long addr,
     unsigned long len)
{
 const unsigned long spage = addr & PAGE_MASK;
 const unsigned long epage = (addr + len - 1) & PAGE_MASK;

 return 1 + ((epage - spage) >> PAGE_SHIFT);
}
