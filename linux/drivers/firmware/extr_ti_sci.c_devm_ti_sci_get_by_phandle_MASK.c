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
 int /*<<< orphan*/  ENOMEM ; 
 struct ti_sci_handle const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ti_sci_handle const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  devm_ti_sci_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ti_sci_handle const**) ; 
 struct ti_sci_handle** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_sci_handle const**) ; 
 struct ti_sci_handle* FUNC6 (int /*<<< orphan*/ ,char const*) ; 

const struct ti_sci_handle *FUNC7(struct device *dev,
						       const char *property)
{
	const struct ti_sci_handle *handle;
	const struct ti_sci_handle **ptr;

	ptr = FUNC4(devm_ti_sci_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);
	handle = FUNC6(FUNC2(dev), property);

	if (!FUNC1(handle)) {
		*ptr = handle;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return handle;
}