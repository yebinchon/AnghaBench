
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int * pages; } ;


 int kvfree (int *) ;

__attribute__((used)) static void gem_free_pages_array(struct xen_gem_object *xen_obj)
{
 kvfree(xen_obj->pages);
 xen_obj->pages = ((void*)0);
}
