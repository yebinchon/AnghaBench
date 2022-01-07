
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
typedef int pgoff_t ;
typedef int pfn_t ;


 long EIO ;

__attribute__((used)) static long io_err_dax_direct_access(struct dm_target *ti, pgoff_t pgoff,
  long nr_pages, void **kaddr, pfn_t *pfn)
{
 return -EIO;
}
