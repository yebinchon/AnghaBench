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
typedef  void* u32 ;
struct icc_path {size_t num_nodes; TYPE_1__* reqs; } ;
struct icc_node {int dummy; } ;
struct TYPE_2__ {void* peak_bw; void* avg_bw; struct icc_node* node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icc_node*) ; 
 int FUNC1 (struct icc_path*) ; 
 int /*<<< orphan*/  icc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct icc_path *path, u32 avg_bw, u32 peak_bw)
{
	struct icc_node *node;
	u32 old_avg, old_peak;
	size_t i;
	int ret;

	if (!path || !path->num_nodes)
		return 0;

	FUNC2(&icc_lock);

	old_avg = path->reqs[0].avg_bw;
	old_peak = path->reqs[0].peak_bw;

	for (i = 0; i < path->num_nodes; i++) {
		node = path->reqs[i].node;

		/* update the consumer request for this path */
		path->reqs[i].avg_bw = avg_bw;
		path->reqs[i].peak_bw = peak_bw;

		/* aggregate requests for this node */
		FUNC0(node);
	}

	ret = FUNC1(path);
	if (ret) {
		FUNC4("interconnect: error applying constraints (%d)\n",
			 ret);

		for (i = 0; i < path->num_nodes; i++) {
			node = path->reqs[i].node;
			path->reqs[i].avg_bw = old_avg;
			path->reqs[i].peak_bw = old_peak;
			FUNC0(node);
		}
		FUNC1(path);
	}

	FUNC3(&icc_lock);

	return ret;
}