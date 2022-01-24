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
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  led_src_texts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 struct wm831x_status* FUNC4 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct wm831x_status*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct wm831x_status *led = FUNC4(led_cdev);
	int i;

	i = FUNC3(led_src_texts, buf);
	if (i >= 0) {
		FUNC1(&led->mutex);
		led->src = i;
		FUNC2(&led->mutex);
		FUNC5(led);
	}

	return size;
}