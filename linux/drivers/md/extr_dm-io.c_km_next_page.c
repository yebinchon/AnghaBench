
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpages {scalar_t__ context_u; int context_ptr; } ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static void km_next_page(struct dpages *dp)
{
 dp->context_ptr += PAGE_SIZE - dp->context_u;
 dp->context_u = 0;
}
