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
struct bmg160_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMG160_REG_PMU_BW ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct bmg160_data *data, int val)
{
	struct device *dev = FUNC2(data->regmap);
	int ret;
	int bw_bits;

	bw_bits = FUNC0(val);
	if (bw_bits < 0)
		return bw_bits;

	ret = FUNC3(data->regmap, BMG160_REG_PMU_BW, bw_bits);
	if (ret < 0) {
		FUNC1(dev, "Error writing reg_pmu_bw\n");
		return ret;
	}

	return 0;
}