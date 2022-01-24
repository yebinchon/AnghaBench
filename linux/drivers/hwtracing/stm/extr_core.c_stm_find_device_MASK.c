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
struct stm_device {int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  stm_class ; 
 int /*<<< orphan*/  stm_core_up ; 
 struct stm_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct stm_device *FUNC4(const char *buf)
{
	struct stm_device *stm;
	struct device *dev;

	if (!stm_core_up)
		return NULL;

	dev = FUNC0(&stm_class, buf);
	if (!dev)
		return NULL;

	stm = FUNC2(dev);
	if (!FUNC3(stm->owner)) {
		/* matches class_find_device() above */
		FUNC1(dev);
		return NULL;
	}

	return stm;
}