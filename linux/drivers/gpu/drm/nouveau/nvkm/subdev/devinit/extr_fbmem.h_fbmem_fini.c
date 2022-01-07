
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_mapping {int dummy; } ;


 int io_mapping_free (struct io_mapping*) ;

__attribute__((used)) static inline void
fbmem_fini(struct io_mapping *fb)
{
 io_mapping_free(fb);
}
