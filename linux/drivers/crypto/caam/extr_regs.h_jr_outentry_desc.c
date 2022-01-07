
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int jr_outentry_get (void*,int,int *,int *) ;

__attribute__((used)) static inline dma_addr_t jr_outentry_desc(void *outring, int hw_idx)
{
 dma_addr_t desc;
 u32 unused;

 jr_outentry_get(outring, hw_idx, &desc, &unused);

 return desc;
}
