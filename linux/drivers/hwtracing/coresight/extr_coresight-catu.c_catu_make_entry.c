
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dma_addr_t ;
typedef int cate_t ;


 int CATU_VALID_ENTRY (scalar_t__) ;

__attribute__((used)) static inline cate_t catu_make_entry(dma_addr_t addr)
{
 return addr ? CATU_VALID_ENTRY(addr) : 0;
}
