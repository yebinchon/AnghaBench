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
struct serio {int dummy; } ;
struct device_driver {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SERIO_RESCAN_PORT ; 
 struct device_driver* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct serio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serio_bus ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  serio_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct serio*) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct device_driver*) ; 
 struct serio* FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct serio *serio = FUNC10(dev);
	struct device_driver *drv;
	int error;

	error = FUNC1(&serio_mutex);
	if (error)
		return error;

	if (!FUNC8(buf, "none", count)) {
		FUNC4(serio);
	} else if (!FUNC8(buf, "reconnect", count)) {
		FUNC6(serio);
	} else if (!FUNC8(buf, "rescan", count)) {
		FUNC4(serio);
		FUNC5(serio);
		FUNC7(serio, SERIO_RESCAN_PORT);
	} else if ((drv = FUNC0(buf, &serio_bus)) != NULL) {
		FUNC4(serio);
		error = FUNC3(serio, FUNC9(drv));
		FUNC7(serio, SERIO_RESCAN_PORT);
	} else {
		error = -EINVAL;
	}

	FUNC2(&serio_mutex);

	return error ? error : count;
}