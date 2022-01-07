
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 void* __vmalloc (unsigned long,int ,int ) ;
 int pgprot_noncached_wc (int ) ;
 void* vmalloc_32 (unsigned long) ;

__attribute__((used)) static inline void *drm_vmalloc_dma(unsigned long size)
{



 return vmalloc_32(size);

}
