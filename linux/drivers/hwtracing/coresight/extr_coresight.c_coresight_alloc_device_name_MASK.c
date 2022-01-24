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
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct coresight_dev_list {int nr_idx; int /*<<< orphan*/  pfx; struct fwnode_handle** fwnode_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct fwnode_handle**) ; 
 int /*<<< orphan*/  coresight_mutex ; 
 int FUNC1 (struct coresight_dev_list*,struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC2 (struct device*) ; 
 char* FUNC3 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct fwnode_handle** FUNC4 (struct fwnode_handle**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

char *FUNC7(struct coresight_dev_list *dict,
				  struct device *dev)
{
	int idx;
	char *name = NULL;
	struct fwnode_handle **list;

	FUNC5(&coresight_mutex);

	idx = FUNC1(dict, FUNC2(dev));
	if (idx < 0) {
		/* Make space for the new entry */
		idx = dict->nr_idx;
		list = FUNC4(dict->fwnode_list,
				(idx + 1) * sizeof(*dict->fwnode_list),
				GFP_KERNEL);
		if (FUNC0(list)) {
			idx = -ENOMEM;
			goto done;
		}

		list[idx] = FUNC2(dev);
		dict->fwnode_list = list;
		dict->nr_idx = idx + 1;
	}

	name = FUNC3(dev, GFP_KERNEL, "%s%d", dict->pfx, idx);
done:
	FUNC6(&coresight_mutex);
	return name;
}