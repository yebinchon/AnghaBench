
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_mem {int ref; } ;


 int kref_put (int *,int ) ;
 int siw_free_mem ;

__attribute__((used)) static inline void siw_mem_put(struct siw_mem *mem)
{
 kref_put(&mem->ref, siw_free_mem);
}
