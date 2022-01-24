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
struct wm831x_status {int src; int /*<<< orphan*/  mutex; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 char** led_src_texts ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*,...) ; 
 struct wm831x_status* FUNC5 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr, char *buf)
{
	struct led_classdev *led_cdev = FUNC1(dev);
	struct wm831x_status *led = FUNC5(led_cdev);
	int i;
	ssize_t ret = 0;

	FUNC2(&led->mutex);

	for (i = 0; i < FUNC0(led_src_texts); i++)
		if (i == led->src)
			ret += FUNC4(&buf[ret], "[%s] ", led_src_texts[i]);
		else
			ret += FUNC4(&buf[ret], "%s ", led_src_texts[i]);

	FUNC3(&led->mutex);

	ret += FUNC4(&buf[ret], "\n");

	return ret;
}