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
struct trusted_foundations_platform_data {int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct trusted_foundations_platform_data*) ; 

void FUNC4(void)
{
	struct device_node *node;
	struct trusted_foundations_platform_data pdata;
	int err;

	node = FUNC0(NULL, NULL, "tlm,trusted-foundations");
	if (!node)
		return;

	err = FUNC1(node, "tlm,version-major",
				   &pdata.version_major);
	if (err != 0)
		FUNC2("Trusted Foundation: missing version-major property\n");
	err = FUNC1(node, "tlm,version-minor",
				   &pdata.version_minor);
	if (err != 0)
		FUNC2("Trusted Foundation: missing version-minor property\n");
	FUNC3(&pdata);
}