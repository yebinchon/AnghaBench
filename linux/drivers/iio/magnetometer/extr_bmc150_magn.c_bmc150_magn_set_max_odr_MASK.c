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
struct bmc150_magn_data {int max_odr; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_XY ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_Z ; 
 int EINVAL ; 
 int FUNC2 (struct bmc150_magn_data*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct bmc150_magn_data *data, int rep_xy,
				   int rep_z, int odr)
{
	int ret, reg_val, max_odr;

	if (rep_xy <= 0) {
		ret = FUNC4(data->regmap, BMC150_MAGN_REG_REP_XY,
				  &reg_val);
		if (ret < 0)
			return ret;
		rep_xy = FUNC0(reg_val);
	}
	if (rep_z <= 0) {
		ret = FUNC4(data->regmap, BMC150_MAGN_REG_REP_Z,
				  &reg_val);
		if (ret < 0)
			return ret;
		rep_z = FUNC1(reg_val);
	}
	if (odr <= 0) {
		ret = FUNC2(data, &odr);
		if (ret < 0)
			return ret;
	}
	/* the maximum selectable read-out frequency from datasheet */
	max_odr = 1000000 / (145 * rep_xy + 500 * rep_z + 980);
	if (odr > max_odr) {
		FUNC3(data->dev,
			"Can't set oversampling with sampling freq %d\n",
			odr);
		return -EINVAL;
	}
	data->max_odr = max_odr;

	return 0;
}