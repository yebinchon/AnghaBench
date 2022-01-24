#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct dax_region {unsigned long pfn_flags; int id; unsigned int align; int target_node; int /*<<< orphan*/  kref; struct device* dev; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  dax_region_attribute_groups ; 
 int /*<<< orphan*/  dax_region_unregister ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct dax_region*) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ,struct dax_region*) ; 
 int /*<<< orphan*/  FUNC5 (struct dax_region*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dax_region* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct dax_region *FUNC12(struct device *parent, int region_id,
		struct resource *res, int target_node, unsigned int align,
		unsigned long pfn_flags)
{
	struct dax_region *dax_region;

	/*
	 * The DAX core assumes that it can store its private data in
	 * parent->driver_data. This WARN is a reminder / safeguard for
	 * developers of device-dax drivers.
	 */
	if (FUNC2(parent)) {
		FUNC1(parent, "dax core failed to setup private data\n");
		return NULL;
	}

	if (!FUNC0(res->start, align)
			|| !FUNC0(FUNC10(res), align))
		return NULL;

	dax_region = FUNC8(sizeof(*dax_region), GFP_KERNEL);
	if (!dax_region)
		return NULL;

	FUNC3(parent, dax_region);
	FUNC9(&dax_region->res, res, sizeof(*res));
	dax_region->pfn_flags = pfn_flags;
	FUNC7(&dax_region->kref);
	dax_region->id = region_id;
	dax_region->align = align;
	dax_region->dev = parent;
	dax_region->target_node = target_node;
	if (FUNC11(&parent->kobj, dax_region_attribute_groups)) {
		FUNC5(dax_region);
		return NULL;
	}

	FUNC6(&dax_region->kref);
	if (FUNC4(parent, dax_region_unregister, dax_region))
		return NULL;
	return dax_region;
}