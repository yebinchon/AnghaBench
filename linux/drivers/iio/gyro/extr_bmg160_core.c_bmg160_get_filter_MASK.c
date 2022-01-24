#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct bmg160_data {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {unsigned int bw_bits; int filter; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BMG160_REG_PMU_BW ; 
 unsigned int BMG160_REG_PMU_BW_RES ; 
 int IIO_VAL_INT ; 
 TYPE_1__* bmg160_samp_freq_table ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct bmg160_data *data, int *val)
{
	struct device *dev = FUNC2(data->regmap);
	int ret;
	int i;
	unsigned int bw_bits;

	ret = FUNC3(data->regmap, BMG160_REG_PMU_BW, &bw_bits);
	if (ret < 0) {
		FUNC1(dev, "Error reading reg_pmu_bw\n");
		return ret;
	}

	/* Ignore the readonly reserved bit. */
	bw_bits &= ~BMG160_REG_PMU_BW_RES;

	for (i = 0; i < FUNC0(bmg160_samp_freq_table); ++i) {
		if (bmg160_samp_freq_table[i].bw_bits == bw_bits)
			break;
	}

	*val = bmg160_samp_freq_table[i].filter;

	return ret ? ret : IIO_VAL_INT;
}