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
struct mddev {int dummy; } ;
struct TYPE_2__ {int (* join ) (struct mddev*,int) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  md_cluster_mod ; 
 TYPE_1__* md_cluster_ops ; 
 int /*<<< orphan*/  pers_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct mddev *mddev, int nodes)
{
	if (!md_cluster_ops)
		FUNC1("md-cluster");
	FUNC2(&pers_lock);
	/* ensure module won't be unloaded */
	if (!md_cluster_ops || !FUNC5(md_cluster_mod)) {
		FUNC0("can't find md-cluster module or get it's reference.\n");
		FUNC3(&pers_lock);
		return -ENOENT;
	}
	FUNC3(&pers_lock);

	return md_cluster_ops->join(mddev, nodes);
}