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
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct dss_device *dss = FUNC0(dev);

	FUNC1(dss);
	FUNC2(dev, 0);

	FUNC3(dev);

	return 0;
}