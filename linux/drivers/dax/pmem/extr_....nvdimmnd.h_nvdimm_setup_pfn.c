
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int dummy; } ;
struct dev_pagemap {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static inline int nvdimm_setup_pfn(struct nd_pfn *nd_pfn,
       struct dev_pagemap *pgmap)
{
 return -ENXIO;
}
