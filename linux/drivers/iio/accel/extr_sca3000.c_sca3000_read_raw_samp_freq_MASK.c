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
struct sca3000_state {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_CTRL_SEL_OUT_CTRL ; 
#define  SCA3000_REG_OUT_CTRL_BUF_DIV_2 129 
#define  SCA3000_REG_OUT_CTRL_BUF_DIV_4 128 
 int SCA3000_REG_OUT_CTRL_BUF_DIV_MASK ; 
 int FUNC0 (struct sca3000_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct sca3000_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sca3000_state *st, int *val)
{
	int ret;

	ret = FUNC0(st, st->info, val);
	if (ret)
		return ret;

	ret = FUNC1(st, SCA3000_REG_CTRL_SEL_OUT_CTRL);
	if (ret < 0)
		return ret;

	if (*val > 0) {
		ret &= SCA3000_REG_OUT_CTRL_BUF_DIV_MASK;
		switch (ret) {
		case SCA3000_REG_OUT_CTRL_BUF_DIV_2:
			*val /= 2;
			break;
		case SCA3000_REG_OUT_CTRL_BUF_DIV_4:
			*val /= 4;
			break;
		}
	}

	return 0;
}