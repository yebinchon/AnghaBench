#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sca3000_state {int* rx; TYPE_1__* info; } ;
struct TYPE_2__ {int measurement_mode_3db_freq; int option_mode_1_3db_freq; int option_mode_2_3db_freq; scalar_t__ option_mode_2; scalar_t__ option_mode_1; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCA3000_REG_MODE_ADDR ; 
 int SCA3000_REG_MODE_MEAS_MODE_NORMAL ; 
 int SCA3000_REG_MODE_MEAS_MODE_OP_1 ; 
 int SCA3000_REG_MODE_MEAS_MODE_OP_2 ; 
 int SCA3000_REG_MODE_MODE_MASK ; 
 int FUNC0 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct sca3000_state *st, int val)
{
	int ret;
	int mode;

	if (val == st->info->measurement_mode_3db_freq)
		mode = SCA3000_REG_MODE_MEAS_MODE_NORMAL;
	else if (st->info->option_mode_1 &&
		 (val == st->info->option_mode_1_3db_freq))
		mode = SCA3000_REG_MODE_MEAS_MODE_OP_1;
	else if (st->info->option_mode_2 &&
		 (val == st->info->option_mode_2_3db_freq))
		mode = SCA3000_REG_MODE_MEAS_MODE_OP_2;
	else
		return -EINVAL;
	ret = FUNC0(st, SCA3000_REG_MODE_ADDR, 1);
	if (ret)
		return ret;

	st->rx[0] &= ~SCA3000_REG_MODE_MODE_MASK;
	st->rx[0] |= (mode & SCA3000_REG_MODE_MODE_MASK);

	return FUNC1(st, SCA3000_REG_MODE_ADDR, st->rx[0]);
}