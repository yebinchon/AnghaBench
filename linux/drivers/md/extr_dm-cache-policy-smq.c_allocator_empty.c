
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {int free; } ;


 int l_empty (int *) ;

__attribute__((used)) static bool allocator_empty(struct entry_alloc *ea)
{
 return l_empty(&ea->free);
}
