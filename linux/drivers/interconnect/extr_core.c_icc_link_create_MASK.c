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
struct icc_node {int num_links; struct icc_node** links; int /*<<< orphan*/  provider; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct icc_node*) ; 
 int FUNC1 (struct icc_node*) ; 
 int /*<<< orphan*/  icc_lock ; 
 struct icc_node* FUNC2 (int const) ; 
 struct icc_node** FUNC3 (struct icc_node**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct icc_node* FUNC6 (int const) ; 

int FUNC7(struct icc_node *node, const int dst_id)
{
	struct icc_node *dst;
	struct icc_node **new;
	int ret = 0;

	if (!node->provider)
		return -EINVAL;

	FUNC4(&icc_lock);

	dst = FUNC6(dst_id);
	if (!dst) {
		dst = FUNC2(dst_id);

		if (FUNC0(dst)) {
			ret = FUNC1(dst);
			goto out;
		}
	}

	new = FUNC3(node->links,
		       (node->num_links + 1) * sizeof(*node->links),
		       GFP_KERNEL);
	if (!new) {
		ret = -ENOMEM;
		goto out;
	}

	node->links = new;
	node->links[node->num_links++] = dst;

out:
	FUNC5(&icc_lock);

	return ret;
}