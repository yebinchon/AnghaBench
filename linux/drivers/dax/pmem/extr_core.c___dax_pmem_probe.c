
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct nd_region {int target_node; } ;
struct nd_pfn_sb {int align; int dataoff; } ;
struct nd_pfn {struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_2__ {int start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int dev; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int parent; } ;
struct dev_pagemap {int res; } ;
struct dev_dax {int dummy; } ;
struct dax_region {int dummy; } ;
typedef scalar_t__ resource_size_t ;
typedef int res ;
typedef enum dev_dax_subsys { ____Placeholder_dev_dax_subsys } dev_dax_subsys ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct dev_dax* ERR_CAST (struct nd_namespace_common*) ;
 struct dev_dax* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct nd_namespace_common*) ;
 int PFN_DEV ;
 int PFN_MAP ;
 struct dev_dax* __devm_create_dev_dax (struct dax_region*,int,struct dev_pagemap*,int) ;
 struct dax_region* alloc_dax_region (struct device*,int,struct resource*,int ,int ,int) ;
 int dax_region_put (struct dax_region*) ;
 int dev_name (int *) ;
 int dev_warn (struct device*,char*) ;
 int devm_nsio_disable (struct device*,struct nd_namespace_io*) ;
 int devm_nsio_enable (struct device*,struct nd_namespace_io*) ;
 int devm_request_mem_region (struct device*,int ,scalar_t__,int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (struct resource*,int *,int) ;
 struct nd_namespace_common* nvdimm_namespace_common_probe (struct device*) ;
 int nvdimm_setup_pfn (struct nd_pfn*,struct dev_pagemap*) ;
 int sscanf (int ,char*,int*,int*) ;
 struct nd_dax* to_nd_dax (struct device*) ;
 struct nd_namespace_io* to_nd_namespace_io (int *) ;
 struct nd_region* to_nd_region (int ) ;

struct dev_dax *__dax_pmem_probe(struct device *dev, enum dev_dax_subsys subsys)
{
 struct resource res;
 int rc, id, region_id;
 resource_size_t offset;
 struct nd_pfn_sb *pfn_sb;
 struct dev_dax *dev_dax;
 struct nd_namespace_io *nsio;
 struct dax_region *dax_region;
 struct dev_pagemap pgmap = { };
 struct nd_namespace_common *ndns;
 struct nd_dax *nd_dax = to_nd_dax(dev);
 struct nd_pfn *nd_pfn = &nd_dax->nd_pfn;
 struct nd_region *nd_region = to_nd_region(dev->parent);

 ndns = nvdimm_namespace_common_probe(dev);
 if (IS_ERR(ndns))
  return ERR_CAST(ndns);
 nsio = to_nd_namespace_io(&ndns->dev);


 rc = devm_nsio_enable(dev, nsio);
 if (rc)
  return ERR_PTR(rc);
 rc = nvdimm_setup_pfn(nd_pfn, &pgmap);
 if (rc)
  return ERR_PTR(rc);
 devm_nsio_disable(dev, nsio);


 pfn_sb = nd_pfn->pfn_sb;
 offset = le64_to_cpu(pfn_sb->dataoff);
 if (!devm_request_mem_region(dev, nsio->res.start, offset,
    dev_name(&ndns->dev))) {
  dev_warn(dev, "could not reserve metadata\n");
  return ERR_PTR(-EBUSY);
 }

 rc = sscanf(dev_name(&ndns->dev), "namespace%d.%d", &region_id, &id);
 if (rc != 2)
  return ERR_PTR(-EINVAL);


 memcpy(&res, &pgmap.res, sizeof(res));
 res.start += offset;
 dax_region = alloc_dax_region(dev, region_id, &res,
   nd_region->target_node, le32_to_cpu(pfn_sb->align),
   PFN_DEV|PFN_MAP);
 if (!dax_region)
  return ERR_PTR(-ENOMEM);

 dev_dax = __devm_create_dev_dax(dax_region, id, &pgmap, subsys);


 dax_region_put(dax_region);

 return dev_dax;
}
