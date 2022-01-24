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
struct module {int dummy; } ;
struct md_cluster_operations {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 struct module* md_cluster_mod ; 
 struct md_cluster_operations* md_cluster_ops ; 
 int /*<<< orphan*/  pers_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct md_cluster_operations *ops,
				   struct module *module)
{
	int ret = 0;
	FUNC0(&pers_lock);
	if (md_cluster_ops != NULL)
		ret = -EALREADY;
	else {
		md_cluster_ops = ops;
		md_cluster_mod = module;
	}
	FUNC1(&pers_lock);
	return ret;
}