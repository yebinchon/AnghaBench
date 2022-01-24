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
struct bmc150_accel_data {int /*<<< orphan*/  bw_bits; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int val; int val2; int /*<<< orphan*/  bw_bits; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_PMU_BW ; 
 int EINVAL ; 
 TYPE_1__* bmc150_accel_samp_freq_table ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bmc150_accel_data *data, int val,
			       int val2)
{
	int i;
	int ret;

	for (i = 0; i < FUNC0(bmc150_accel_samp_freq_table); ++i) {
		if (bmc150_accel_samp_freq_table[i].val == val &&
		    bmc150_accel_samp_freq_table[i].val2 == val2) {
			ret = FUNC1(data->regmap,
				BMC150_ACCEL_REG_PMU_BW,
				bmc150_accel_samp_freq_table[i].bw_bits);
			if (ret < 0)
				return ret;

			data->bw_bits =
				bmc150_accel_samp_freq_table[i].bw_bits;
			return 0;
		}
	}

	return -EINVAL;
}