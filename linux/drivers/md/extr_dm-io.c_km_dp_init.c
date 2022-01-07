
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpages {void* context_ptr; int context_u; int next_page; int get_page; } ;


 int km_get_page ;
 int km_next_page ;
 int offset_in_page (void*) ;

__attribute__((used)) static void km_dp_init(struct dpages *dp, void *data)
{
 dp->get_page = km_get_page;
 dp->next_page = km_next_page;
 dp->context_u = offset_in_page(data);
 dp->context_ptr = data;
}
