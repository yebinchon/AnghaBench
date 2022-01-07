
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_dax {struct dax_region* region; } ;
struct TYPE_2__ {unsigned long long start; } ;
struct dax_region {TYPE_1__ res; } ;



__attribute__((used)) static unsigned long long dev_dax_resource(struct dev_dax *dev_dax)
{
 struct dax_region *dax_region = dev_dax->region;

 return dax_region->res.start;
}
