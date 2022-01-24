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
struct dca_provider {int /*<<< orphan*/  cd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  dca_class ; 
 struct device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct dca_provider *dca, struct device *dev, int slot)
{
	struct device *cd;
	static int req_count;

	cd = FUNC3(dca_class, dca->cd, FUNC1(0, slot + 1), NULL,
			   "requester%d", req_count++);
	if (FUNC0(cd))
		return FUNC2(cd);
	return 0;
}