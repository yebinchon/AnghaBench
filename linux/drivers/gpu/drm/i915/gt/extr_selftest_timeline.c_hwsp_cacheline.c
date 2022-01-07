
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {unsigned long hwsp_offset; } ;


 unsigned long CACHELINE_BYTES ;
 int hwsp_page (struct intel_timeline*) ;
 scalar_t__ page_address (int ) ;

__attribute__((used)) static unsigned long hwsp_cacheline(struct intel_timeline *tl)
{
 unsigned long address = (unsigned long)page_address(hwsp_page(tl));

 return (address + tl->hwsp_offset) / CACHELINE_BYTES;
}
