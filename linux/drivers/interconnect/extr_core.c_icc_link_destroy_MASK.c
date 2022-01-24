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
struct icc_node {size_t num_links; struct icc_node** links; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct icc_node*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  icc_lock ; 
 struct icc_node** FUNC2 (struct icc_node**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct icc_node *src, struct icc_node *dst)
{
	struct icc_node **new;
	size_t slot;
	int ret = 0;

	if (FUNC0(src))
		return -EINVAL;

	if (FUNC0(dst))
		return -EINVAL;

	FUNC3(&icc_lock);

	for (slot = 0; slot < src->num_links; slot++)
		if (src->links[slot] == dst)
			break;

	if (FUNC1(slot == src->num_links)) {
		ret = -ENXIO;
		goto out;
	}

	src->links[slot] = src->links[--src->num_links];

	new = FUNC2(src->links, src->num_links * sizeof(*src->links),
		       GFP_KERNEL);
	if (new)
		src->links = new;

out:
	FUNC4(&icc_lock);

	return ret;
}