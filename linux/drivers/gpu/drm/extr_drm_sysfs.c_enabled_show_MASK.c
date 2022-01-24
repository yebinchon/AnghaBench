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
struct drm_connector {int /*<<< orphan*/  encoder; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 struct drm_connector* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
			    struct device_attribute *attr,
			   char *buf)
{
	struct drm_connector *connector = FUNC2(device);
	bool enabled;

	enabled = FUNC0(connector->encoder);

	return FUNC1(buf, PAGE_SIZE, enabled ? "enabled\n" : "disabled\n");
}