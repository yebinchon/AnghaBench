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
struct fxas21002c_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  F_BW ; 
 int FUNC0 (struct fxas21002c_data*,int) ; 
 int FUNC1 (struct fxas21002c_data*,int*) ; 
 int FUNC2 (struct fxas21002c_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct fxas21002c_data *data, int bw)
{
	int bw_bits;
	int odr;
	int ret;

	bw_bits = FUNC0(data, bw);
	if (bw_bits < 0)
		return bw_bits;

	/*
	 * From table 33 of the device spec, for ODR = 25Hz and 12.5 value 0.08
	 * is not allowed and for ODR = 12.5 value 0.16 is also not allowed
	 */
	ret = FUNC1(data, &odr);
	if (ret < 0)
		return -EINVAL;

	if ((odr == 25 && bw_bits > 0x01) || (odr == 12 && bw_bits > 0))
		return -EINVAL;

	return FUNC2(data, F_BW, bw_bits);
}