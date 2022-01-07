
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct core_dump_iterator {scalar_t__ data; TYPE_1__* hdr; } ;
struct TYPE_2__ {int iova; } ;


 int cpu_to_le64 (int ) ;
 int etnaviv_core_dump_header (struct core_dump_iterator*,int ,scalar_t__) ;
 int memcpy (scalar_t__,void*,size_t) ;

__attribute__((used)) static void etnaviv_core_dump_mem(struct core_dump_iterator *iter, u32 type,
 void *ptr, size_t size, u64 iova)
{
 memcpy(iter->data, ptr, size);

 iter->hdr->iova = cpu_to_le64(iova);

 etnaviv_core_dump_header(iter, type, iter->data + size);
}
