
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PFN_DOWN (int ) ;
 int __pa (void*) ;

__attribute__((used)) static unsigned long kvmgt_virt_to_pfn(void *addr)
{
 return PFN_DOWN(__pa(addr));
}
