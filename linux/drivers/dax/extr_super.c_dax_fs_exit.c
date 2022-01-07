
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dax_cache ;
 int dax_mnt ;
 int kern_unmount (int ) ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static void dax_fs_exit(void)
{
 kern_unmount(dax_mnt);
 kmem_cache_destroy(dax_cache);
}
