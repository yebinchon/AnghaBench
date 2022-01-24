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
struct device {int dummy; } ;
struct aem_ipmi_data {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aem_ipmi_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct aem_ipmi_data*) ; 
 scalar_t__ FUNC2 (struct aem_ipmi_data*,int,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int iface, struct device *dev)
{
	struct aem_ipmi_data probe;

	if (FUNC2(&probe, iface, dev))
		return;

	/* Ignore probe errors; they won't cause problems */
	FUNC0(&probe);
	FUNC1(&probe);

	FUNC3(probe.user);
}