
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pagemap {int dummy; } ;
struct dev_dax {int dummy; } ;
struct dax_region {int dummy; } ;


 int DEV_DAX_BUS ;
 struct dev_dax* __devm_create_dev_dax (struct dax_region*,int,struct dev_pagemap*,int ) ;

__attribute__((used)) static inline struct dev_dax *devm_create_dev_dax(struct dax_region *dax_region,
  int id, struct dev_pagemap *pgmap)
{
 return __devm_create_dev_dax(dax_region, id, pgmap, DEV_DAX_BUS);
}
