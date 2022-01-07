
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static unsigned persistent_memory_page_offset(void *addr)
{
 return (unsigned long)addr & (PAGE_SIZE - 1);
}
