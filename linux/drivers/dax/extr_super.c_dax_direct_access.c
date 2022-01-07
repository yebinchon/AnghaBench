
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dax_device {TYPE_1__* ops; } ;
typedef int pgoff_t ;
typedef int pfn_t ;
struct TYPE_2__ {long (* direct_access ) (struct dax_device*,int ,long,void**,int *) ;} ;


 long ENXIO ;
 long EOPNOTSUPP ;
 long ERANGE ;
 int dax_alive (struct dax_device*) ;
 long min (long,long) ;
 long stub1 (struct dax_device*,int ,long,void**,int *) ;

long dax_direct_access(struct dax_device *dax_dev, pgoff_t pgoff, long nr_pages,
  void **kaddr, pfn_t *pfn)
{
 long avail;

 if (!dax_dev)
  return -EOPNOTSUPP;

 if (!dax_alive(dax_dev))
  return -ENXIO;

 if (nr_pages < 0)
  return nr_pages;

 avail = dax_dev->ops->direct_access(dax_dev, pgoff, nr_pages,
   kaddr, pfn);
 if (!avail)
  return -ERANGE;
 return min(avail, nr_pages);
}
