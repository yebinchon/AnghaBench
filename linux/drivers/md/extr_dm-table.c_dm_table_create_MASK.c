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
struct mapped_device {int dummy; } ;
struct dm_table {struct mapped_device* md; int /*<<< orphan*/  mode; int /*<<< orphan*/  type; int /*<<< orphan*/  target_callbacks; int /*<<< orphan*/  devices; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM_TYPE_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int KEYS_PER_NODE ; 
 scalar_t__ FUNC1 (struct dm_table*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*) ; 
 struct dm_table* FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct dm_table **result, fmode_t mode,
		    unsigned num_targets, struct mapped_device *md)
{
	struct dm_table *t = FUNC4(sizeof(*t), GFP_KERNEL);

	if (!t)
		return -ENOMEM;

	FUNC0(&t->devices);
	FUNC0(&t->target_callbacks);

	if (!num_targets)
		num_targets = KEYS_PER_NODE;

	num_targets = FUNC2(num_targets, KEYS_PER_NODE);

	if (!num_targets) {
		FUNC3(t);
		return -ENOMEM;
	}

	if (FUNC1(t, num_targets)) {
		FUNC3(t);
		return -ENOMEM;
	}

	t->type = DM_TYPE_NONE;
	t->mode = mode;
	t->md = md;
	*result = t;
	return 0;
}