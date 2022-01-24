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
struct applesmc_registers {unsigned int temp_begin; unsigned int temp_end; int /*<<< orphan*/  index_count; int /*<<< orphan*/ * index; int /*<<< orphan*/  temp_count; } ;
struct applesmc_entry {int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct applesmc_entry const*) ; 
 int /*<<< orphan*/  TEMP_SENSOR_TYPE ; 
 struct applesmc_entry* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct applesmc_registers *s)
{
	const struct applesmc_entry *entry;
	unsigned int i;

	if (s->index)
		return 0;

	s->index = FUNC2(s->temp_count, sizeof(s->index[0]), GFP_KERNEL);
	if (!s->index)
		return -ENOMEM;

	for (i = s->temp_begin; i < s->temp_end; i++) {
		entry = FUNC1(i);
		if (FUNC0(entry))
			continue;
		if (FUNC3(entry->type, TEMP_SENSOR_TYPE))
			continue;
		s->index[s->index_count++] = entry->key;
	}

	return 0;
}