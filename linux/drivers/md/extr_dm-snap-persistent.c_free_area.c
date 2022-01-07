
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int * header_area; int * zero_area; int * area; } ;


 int vfree (int *) ;

__attribute__((used)) static void free_area(struct pstore *ps)
{
 vfree(ps->area);
 ps->area = ((void*)0);
 vfree(ps->zero_area);
 ps->zero_area = ((void*)0);
 vfree(ps->header_area);
 ps->header_area = ((void*)0);
}
