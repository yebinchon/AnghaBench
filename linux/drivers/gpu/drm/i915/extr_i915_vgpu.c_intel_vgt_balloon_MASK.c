#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct intel_uncore {int dummy; } ;
struct TYPE_7__ {unsigned long total; TYPE_4__* i915; } ;
struct i915_ggtt {unsigned long mappable_end; TYPE_1__ vm; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct TYPE_12__ {TYPE_3__ nonmappable_gmadr; TYPE_2__ mappable_gmadr; } ;
struct TYPE_11__ {int /*<<< orphan*/ * space; } ;
struct TYPE_10__ {struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 TYPE_6__ avail_rs ; 
 TYPE_5__ bl_info ; 
 unsigned long FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (struct i915_ggtt*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_ggtt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct i915_ggtt *ggtt)
{
	struct intel_uncore *uncore = &ggtt->vm.i915->uncore;
	unsigned long ggtt_end = ggtt->vm.total;

	unsigned long mappable_base, mappable_size, mappable_end;
	unsigned long unmappable_base, unmappable_size, unmappable_end;
	int ret;

	if (!FUNC3(ggtt->vm.i915))
		return 0;

	mappable_base =
	  FUNC2(uncore, FUNC6(avail_rs.mappable_gmadr.base));
	mappable_size =
	  FUNC2(uncore, FUNC6(avail_rs.mappable_gmadr.size));
	unmappable_base =
	  FUNC2(uncore, FUNC6(avail_rs.nonmappable_gmadr.base));
	unmappable_size =
	  FUNC2(uncore, FUNC6(avail_rs.nonmappable_gmadr.size));

	mappable_end = mappable_base + mappable_size;
	unmappable_end = unmappable_base + unmappable_size;

	FUNC1("VGT ballooning configuration:\n");
	FUNC1("Mappable graphic memory: base 0x%lx size %ldKiB\n",
		 mappable_base, mappable_size / 1024);
	FUNC1("Unmappable graphic memory: base 0x%lx size %ldKiB\n",
		 unmappable_base, unmappable_size / 1024);

	if (mappable_end > ggtt->mappable_end ||
	    unmappable_base < ggtt->mappable_end ||
	    unmappable_end > ggtt_end) {
		FUNC0("Invalid ballooning configuration!\n");
		return -EINVAL;
	}

	/* Unmappable graphic memory ballooning */
	if (unmappable_base > ggtt->mappable_end) {
		ret = FUNC4(ggtt, &bl_info.space[2],
					ggtt->mappable_end, unmappable_base);

		if (ret)
			goto err;
	}

	if (unmappable_end < ggtt_end) {
		ret = FUNC4(ggtt, &bl_info.space[3],
					unmappable_end, ggtt_end);
		if (ret)
			goto err_upon_mappable;
	}

	/* Mappable graphic memory ballooning */
	if (mappable_base) {
		ret = FUNC4(ggtt, &bl_info.space[0],
					0, mappable_base);

		if (ret)
			goto err_upon_unmappable;
	}

	if (mappable_end < ggtt->mappable_end) {
		ret = FUNC4(ggtt, &bl_info.space[1],
					mappable_end, ggtt->mappable_end);

		if (ret)
			goto err_below_mappable;
	}

	FUNC1("VGT balloon successfully\n");
	return 0;

err_below_mappable:
	FUNC5(ggtt, &bl_info.space[0]);
err_upon_unmappable:
	FUNC5(ggtt, &bl_info.space[3]);
err_upon_mappable:
	FUNC5(ggtt, &bl_info.space[2]);
err:
	FUNC0("VGT balloon fail\n");
	return ret;
}