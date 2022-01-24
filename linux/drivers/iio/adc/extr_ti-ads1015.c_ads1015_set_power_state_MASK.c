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
struct ads1015_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ads1015_data *data, bool on)
{
	int ret;
	struct device *dev = FUNC4(data->regmap);

	if (on) {
		ret = FUNC0(dev);
		if (ret < 0)
			FUNC3(dev);
	} else {
		FUNC1(dev);
		ret = FUNC2(dev);
	}

	return ret < 0 ? ret : 0;
}