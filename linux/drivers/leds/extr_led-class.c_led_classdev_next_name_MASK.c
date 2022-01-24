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

/* Variables and functions */
 int ENOMEM ; 
 struct device* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  leds_class ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (char*,size_t,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(const char *init_name, char *name,
				  size_t len)
{
	unsigned int i = 0;
	int ret = 0;
	struct device *dev;

	FUNC3(name, init_name, len);

	while ((ret < len) &&
	       (dev = FUNC0(leds_class, name))) {
		FUNC1(dev);
		ret = FUNC2(name, len, "%s_%u", init_name, ++i);
	}

	if (ret >= len)
		return -ENOMEM;

	return i;
}