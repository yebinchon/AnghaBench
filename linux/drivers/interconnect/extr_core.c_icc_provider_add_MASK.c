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
struct icc_provider {int /*<<< orphan*/  dev; int /*<<< orphan*/  provider_list; int /*<<< orphan*/  nodes; int /*<<< orphan*/  xlate; int /*<<< orphan*/  set; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  icc_lock ; 
 int /*<<< orphan*/  icc_providers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct icc_provider *provider)
{
	if (FUNC1(!provider->set))
		return -EINVAL;
	if (FUNC1(!provider->xlate))
		return -EINVAL;

	FUNC4(&icc_lock);

	FUNC0(&provider->nodes);
	FUNC3(&provider->provider_list, &icc_providers);

	FUNC5(&icc_lock);

	FUNC2(provider->dev, "interconnect provider added to topology\n");

	return 0;
}