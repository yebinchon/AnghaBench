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
struct switch_ctx {unsigned long nr_regions; unsigned long nr_paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 unsigned long FUNC1 (char const**) ; 
 unsigned long FUNC2 (struct switch_ctx*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_ctx*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (char const) ; 

__attribute__((used)) static int FUNC5(struct switch_ctx *sctx,
				       unsigned argc, char **argv)
{
	unsigned i;
	unsigned long region_index = 0;

	for (i = 1; i < argc; i++) {
		unsigned long path_nr;
		const char *string = argv[i];

		if ((*string & 0xdf) == 'R') {
			unsigned long cycle_length, num_write;

			string++;
			if (FUNC4(*string == ',')) {
				FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
				return -EINVAL;
			}
			cycle_length = FUNC1(&string);
			if (FUNC4(*string != ',')) {
				FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
				return -EINVAL;
			}
			string++;
			if (FUNC4(!*string)) {
				FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
				return -EINVAL;
			}
			num_write = FUNC1(&string);
			if (FUNC4(*string)) {
				FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
				return -EINVAL;
			}

			if (FUNC4(!cycle_length) || FUNC4(cycle_length - 1 > region_index)) {
				FUNC0("invalid set_region_mappings cycle length: %lu > %lu",
				       cycle_length - 1, region_index);
				return -EINVAL;
			}
			if (FUNC4(region_index + num_write < region_index) ||
			    FUNC4(region_index + num_write >= sctx->nr_regions)) {
				FUNC0("invalid set_region_mappings region number: %lu + %lu >= %lu",
				       region_index, num_write, sctx->nr_regions);
				return -EINVAL;
			}

			while (num_write--) {
				region_index++;
				path_nr = FUNC2(sctx, region_index - cycle_length);
				FUNC3(sctx, region_index, path_nr);
			}

			continue;
		}

		if (*string == ':')
			region_index++;
		else {
			region_index = FUNC1(&string);
			if (FUNC4(*string != ':')) {
				FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
				return -EINVAL;
			}
		}

		string++;
		if (FUNC4(!*string)) {
			FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
			return -EINVAL;
		}

		path_nr = FUNC1(&string);
		if (FUNC4(*string)) {
			FUNC0("invalid set_region_mappings argument: '%s'", argv[i]);
			return -EINVAL;
		}
		if (FUNC4(region_index >= sctx->nr_regions)) {
			FUNC0("invalid set_region_mappings region number: %lu >= %lu", region_index, sctx->nr_regions);
			return -EINVAL;
		}
		if (FUNC4(path_nr >= sctx->nr_paths)) {
			FUNC0("invalid set_region_mappings device: %lu >= %u", path_nr, sctx->nr_paths);
			return -EINVAL;
		}

		FUNC3(sctx, region_index, path_nr);
	}

	return 0;
}