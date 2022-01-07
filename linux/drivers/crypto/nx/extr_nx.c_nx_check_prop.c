
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct device {int dummy; } ;
struct alg_props {scalar_t__ databytelen; int sglen; } ;
struct TYPE_3__ {struct alg_props*** ap; } ;
struct TYPE_4__ {TYPE_1__ of; } ;


 scalar_t__ NX_PAGE_SIZE ;
 int dev_warn (struct device*,char*,size_t,size_t,int,int ,scalar_t__) ;
 TYPE_2__ nx_driver ;

__attribute__((used)) static bool nx_check_prop(struct device *dev, u32 fc, u32 mode, int slot)
{
 struct alg_props *props = &nx_driver.of.ap[fc][mode][slot];

 if (!props->sglen || props->databytelen < NX_PAGE_SIZE) {
  if (dev)
   dev_warn(dev, "bogus sglen/databytelen for %u/%u/%u: "
     "%u/%u (ignored)\n", fc, mode, slot,
     props->sglen, props->databytelen);
  return 0;
 }

 return 1;
}
