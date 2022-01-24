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
struct ib_uflow_resources {size_t max; struct ib_uflow_resources* counters; void* collection; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_uflow_resources*) ; 
 struct ib_uflow_resources* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct ib_uflow_resources *FUNC3(size_t num_specs)
{
	struct ib_uflow_resources *resources;

	resources = FUNC2(sizeof(*resources), GFP_KERNEL);

	if (!resources)
		return NULL;

	if (!num_specs)
		goto out;

	resources->counters =
		FUNC0(num_specs, sizeof(*resources->counters), GFP_KERNEL);
	resources->collection =
		FUNC0(num_specs, sizeof(*resources->collection), GFP_KERNEL);

	if (!resources->counters || !resources->collection)
		goto err;

out:
	resources->max = num_specs;
	return resources;

err:
	FUNC1(resources->counters);
	FUNC1(resources);

	return NULL;
}