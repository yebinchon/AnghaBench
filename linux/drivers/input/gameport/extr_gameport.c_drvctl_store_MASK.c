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
struct gameport {int dummy; } ;
struct device_driver {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct device_driver* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gameport_bus ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*) ; 
 int /*<<< orphan*/  gameport_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct gameport*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct device_driver*) ; 
 struct gameport* FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct gameport *gameport = FUNC9(dev);
	struct device_driver *drv;
	int error;

	error = FUNC5(&gameport_mutex);
	if (error)
		return error;

	if (!FUNC7(buf, "none", count)) {
		FUNC2(gameport);
	} else if (!FUNC7(buf, "reconnect", count)) {
		FUNC4(gameport);
	} else if (!FUNC7(buf, "rescan", count)) {
		FUNC2(gameport);
		FUNC3(gameport);
	} else if ((drv = FUNC0(buf, &gameport_bus)) != NULL) {
		FUNC2(gameport);
		error = FUNC1(gameport, FUNC8(drv));
	} else {
		error = -EINVAL;
	}

	FUNC6(&gameport_mutex);

	return error ? error : count;
}