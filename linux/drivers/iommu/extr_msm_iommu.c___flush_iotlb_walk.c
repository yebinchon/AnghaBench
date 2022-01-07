
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_iotlb_range (unsigned long,size_t,size_t,int,void*) ;

__attribute__((used)) static void __flush_iotlb_walk(unsigned long iova, size_t size,
          size_t granule, void *cookie)
{
 __flush_iotlb_range(iova, size, granule, 0, cookie);
}
