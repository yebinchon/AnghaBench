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
struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct ti_sci_handle const*) ; 

__attribute__((used)) static void FUNC2(struct device *dev, void *res)
{
	const struct ti_sci_handle **ptr = res;
	const struct ti_sci_handle *handle = *ptr;
	int ret;

	ret = FUNC1(handle);
	if (ret)
		FUNC0(dev, "failed to put handle %d\n", ret);
}