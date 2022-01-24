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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct sca3000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_CTRL_DATA_ADDR ; 
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_ADDR ; 
 int FUNC0 (struct sca3000_state*) ; 
 int FUNC1 (struct sca3000_state*) ; 
 int FUNC2 (struct sca3000_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sca3000_state *st,
				  u8 sel,
				  uint8_t val)
{
	int ret;

	ret = FUNC1(st);
	if (ret < 0)
		goto error_ret;
	if (ret) {
		ret = FUNC0(st);
		if (ret)
			goto error_ret;
	}

	/* Set the control select register */
	ret = FUNC2(st, SCA3000_REG_CTRL_SEL_ADDR, sel);
	if (ret)
		goto error_ret;

	/* Write the actual value into the register */
	ret = FUNC2(st, SCA3000_REG_CTRL_DATA_ADDR, val);

error_ret:
	return ret;
}