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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  auto_dev_name ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,int) ; 

__attribute__((used)) static struct device *FUNC3(const char *device_name, int r)
{
	char auto_dev_name[25];
	struct device *dev;

	FUNC2(auto_dev_name, sizeof(auto_dev_name),
		 "%s.%d.auto", device_name, r);
	dev = FUNC0(&platform_bus_type, NULL, auto_dev_name);
	FUNC1(dev, "device %s added to pm domain\n", auto_dev_name);

	return dev;
}