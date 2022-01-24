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
struct dss_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct dss_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dss_device*) ; 
 int FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct dss_device *dss = FUNC0(dev);
	int r;

	FUNC3(dev);

	/*
	 * Set an arbitrarily high tput request to ensure OPP100.
	 * What we should really do is to make a request to stay in OPP100,
	 * without any tput requirements, but that is not currently possible
	 * via the PM layer.
	 */

	r = FUNC2(dev, 1000000000);
	if (r)
		return r;

	FUNC1(dss);
	return 0;
}