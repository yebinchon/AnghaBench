
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_object {int vaddr; } ;


 int put_pages (struct etnaviv_gem_object*) ;
 int vunmap (int ) ;

__attribute__((used)) static void etnaviv_gem_shmem_release(struct etnaviv_gem_object *etnaviv_obj)
{
 vunmap(etnaviv_obj->vaddr);
 put_pages(etnaviv_obj);
}
