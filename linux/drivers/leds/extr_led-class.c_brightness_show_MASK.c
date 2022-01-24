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
struct led_classdev {int brightness; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct led_classdev *led_cdev = FUNC0(dev);

	/* no lock needed for this */
	FUNC1(led_cdev);

	return FUNC2(buf, "%u\n", led_cdev->brightness);
}