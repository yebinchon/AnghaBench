#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct nd_region {int /*<<< orphan*/  target_node; } ;
struct nd_pfn_sb {int /*<<< orphan*/  align; int /*<<< orphan*/  dataoff; } ;
struct nd_pfn {struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct dev_pagemap {int /*<<< orphan*/  res; } ;
struct dev_dax {int dummy; } ;
struct dax_region {int dummy; } ;
typedef  scalar_t__ resource_size_t ;
typedef  int /*<<< orphan*/  res ;
typedef  enum dev_dax_subsys { ____Placeholder_dev_dax_subsys } dev_dax_subsys ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct dev_dax* FUNC0 (struct nd_namespace_common*) ; 
 struct dev_dax* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nd_namespace_common*) ; 
 int PFN_DEV ; 
 int PFN_MAP ; 
 struct dev_dax* FUNC3 (struct dax_region*,int,struct dev_pagemap*,int) ; 
 struct dax_region* FUNC4 (struct device*,int,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dax_region*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct nd_namespace_io*) ; 
 int FUNC9 (struct device*,struct nd_namespace_io*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*,int /*<<< orphan*/ *,int) ; 
 struct nd_namespace_common* FUNC14 (struct device*) ; 
 int FUNC15 (struct nd_pfn*,struct dev_pagemap*) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int*,int*) ; 
 struct nd_dax* FUNC17 (struct device*) ; 
 struct nd_namespace_io* FUNC18 (int /*<<< orphan*/ *) ; 
 struct nd_region* FUNC19 (int /*<<< orphan*/ ) ; 

struct dev_dax *FUNC20(struct device *dev, enum dev_dax_subsys subsys)
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
	struct nd_dax *nd_dax = FUNC17(dev);
	struct nd_pfn *nd_pfn = &nd_dax->nd_pfn;
	struct nd_region *nd_region = FUNC19(dev->parent);

	ndns = FUNC14(dev);
	if (FUNC2(ndns))
		return FUNC0(ndns);
	nsio = FUNC18(&ndns->dev);

	/* parse the 'pfn' info block via ->rw_bytes */
	rc = FUNC9(dev, nsio);
	if (rc)
		return FUNC1(rc);
	rc = FUNC15(nd_pfn, &pgmap);
	if (rc)
		return FUNC1(rc);
	FUNC8(dev, nsio);

	/* reserve the metadata area, device-dax will reserve the data */
	pfn_sb = nd_pfn->pfn_sb;
	offset = FUNC12(pfn_sb->dataoff);
	if (!FUNC10(dev, nsio->res.start, offset,
				FUNC6(&ndns->dev))) {
		FUNC7(dev, "could not reserve metadata\n");
		return FUNC1(-EBUSY);
	}

	rc = FUNC16(FUNC6(&ndns->dev), "namespace%d.%d", &region_id, &id);
	if (rc != 2)
		return FUNC1(-EINVAL);

	/* adjust the dax_region resource to the start of data */
	FUNC13(&res, &pgmap.res, sizeof(res));
	res.start += offset;
	dax_region = FUNC4(dev, region_id, &res,
			nd_region->target_node, FUNC11(pfn_sb->align),
			PFN_DEV|PFN_MAP);
	if (!dax_region)
		return FUNC1(-ENOMEM);

	dev_dax = FUNC3(dax_region, id, &pgmap, subsys);

	/* child dev_dax instances now own the lifetime of the dax_region */
	FUNC5(dax_region);

	return dev_dax;
}