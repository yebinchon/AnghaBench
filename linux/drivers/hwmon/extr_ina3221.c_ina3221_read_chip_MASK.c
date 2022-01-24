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
typedef  int u32 ;
struct ina3221_data {int /*<<< orphan*/  reg_config; } ;
struct device {int dummy; } ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int EOPNOTSUPP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ina3221_data* FUNC2 (struct device*) ; 
#define  hwmon_chip_samples 129 
#define  hwmon_chip_update_interval 128 
 long* ina3221_avg_samples ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, long *val)
{
	struct ina3221_data *ina = FUNC2(dev);
	int regval;

	switch (attr) {
	case hwmon_chip_samples:
		regval = FUNC1(ina->reg_config);
		*val = ina3221_avg_samples[regval];
		return 0;
	case hwmon_chip_update_interval:
		/* Return in msec */
		*val = FUNC3(ina->reg_config);
		*val = FUNC0(*val, 1000);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}