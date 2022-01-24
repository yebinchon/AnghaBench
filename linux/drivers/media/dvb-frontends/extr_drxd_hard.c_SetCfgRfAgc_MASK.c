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
typedef  scalar_t__ u16 ;
struct drxd_state {scalar_t__ m_FeAgRegAgPwd; } ;
struct SCfgAgc {scalar_t__ outputLevel; scalar_t__ ctrlMode; int settleLevel; } ;

/* Variables and functions */
 scalar_t__ AGC_CTRL_AUTO ; 
 scalar_t__ AGC_CTRL_USER ; 
 scalar_t__ DRXD_FE_CTRL_MAX ; 
 scalar_t__ FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_INPUT ; 
 scalar_t__ FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_OUTPUT ; 
 scalar_t__ FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M ; 
 int /*<<< orphan*/  FE_AG_REG_AG_AGC_SIO__A ; 
 scalar_t__ FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC ; 
 scalar_t__ FE_AG_REG_AG_MODE_LOP_MODE_5__M ; 
 scalar_t__ FE_AG_REG_AG_MODE_LOP_MODE_E_DYNAMIC ; 
 scalar_t__ FE_AG_REG_AG_MODE_LOP_MODE_E_STATIC ; 
 scalar_t__ FE_AG_REG_AG_MODE_LOP_MODE_E__M ; 
 int /*<<< orphan*/  FE_AG_REG_AG_MODE_LOP__A ; 
 scalar_t__ FE_AG_REG_AG_PWD_PWD_PD2_DISABLE ; 
 scalar_t__ FE_AG_REG_AG_PWD_PWD_PD2_ENABLE ; 
 scalar_t__ FE_AG_REG_AG_PWD_PWD_PD2__M ; 
 int /*<<< orphan*/  FE_AG_REG_AG_PWD__A ; 
 int /*<<< orphan*/  FE_AG_REG_PM2_AGC_WRI__A ; 
 int /*<<< orphan*/  FE_AG_REG_TGC_SET_LVL__A ; 
 int FE_AG_REG_TGC_SET_LVL__M ; 
 int FUNC0 (struct drxd_state*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC1 (struct drxd_state*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct drxd_state *state, struct SCfgAgc *cfg)
{
	int status = 0;

	if (cfg->outputLevel > DRXD_FE_CTRL_MAX)
		return -1;

	if (cfg->ctrlMode == AGC_CTRL_USER) {
		do {
			u16 AgModeLop = 0;
			u16 level = (cfg->outputLevel);

			if (level == DRXD_FE_CTRL_MAX)
				level++;

			status = FUNC1(state, FE_AG_REG_PM2_AGC_WRI__A, level, 0x0000);
			if (status < 0)
				break;

			/*==== Mode ====*/

			/* Powerdown PD2, WRI source */
			state->m_FeAgRegAgPwd &= ~(FE_AG_REG_AG_PWD_PWD_PD2__M);
			state->m_FeAgRegAgPwd |=
			    FE_AG_REG_AG_PWD_PWD_PD2_DISABLE;
			status = FUNC1(state, FE_AG_REG_AG_PWD__A, state->m_FeAgRegAgPwd, 0x0000);
			if (status < 0)
				break;

			status = FUNC0(state, FE_AG_REG_AG_MODE_LOP__A, &AgModeLop, 0x0000);
			if (status < 0)
				break;
			AgModeLop &= (~(FE_AG_REG_AG_MODE_LOP_MODE_5__M |
					FE_AG_REG_AG_MODE_LOP_MODE_E__M));
			AgModeLop |= (FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC |
				      FE_AG_REG_AG_MODE_LOP_MODE_E_STATIC);
			status = FUNC1(state, FE_AG_REG_AG_MODE_LOP__A, AgModeLop, 0x0000);
			if (status < 0)
				break;

			/* enable AGC2 pin */
			{
				u16 FeAgRegAgAgcSio = 0;
				status = FUNC0(state, FE_AG_REG_AG_AGC_SIO__A, &FeAgRegAgAgcSio, 0x0000);
				if (status < 0)
					break;
				FeAgRegAgAgcSio &=
				    ~(FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M);
				FeAgRegAgAgcSio |=
				    FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_OUTPUT;
				status = FUNC1(state, FE_AG_REG_AG_AGC_SIO__A, FeAgRegAgAgcSio, 0x0000);
				if (status < 0)
					break;
			}

		} while (0);
	} else if (cfg->ctrlMode == AGC_CTRL_AUTO) {
		u16 AgModeLop = 0;

		do {
			u16 level;
			/* Automatic control */
			/* Powerup PD2, AGC2 as output, TGC source */
			(state->m_FeAgRegAgPwd) &=
			    ~(FE_AG_REG_AG_PWD_PWD_PD2__M);
			(state->m_FeAgRegAgPwd) |=
			    FE_AG_REG_AG_PWD_PWD_PD2_DISABLE;
			status = FUNC1(state, FE_AG_REG_AG_PWD__A, (state->m_FeAgRegAgPwd), 0x0000);
			if (status < 0)
				break;

			status = FUNC0(state, FE_AG_REG_AG_MODE_LOP__A, &AgModeLop, 0x0000);
			if (status < 0)
				break;
			AgModeLop &= (~(FE_AG_REG_AG_MODE_LOP_MODE_5__M |
					FE_AG_REG_AG_MODE_LOP_MODE_E__M));
			AgModeLop |= (FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC |
				      FE_AG_REG_AG_MODE_LOP_MODE_E_DYNAMIC);
			status = FUNC1(state, FE_AG_REG_AG_MODE_LOP__A, AgModeLop, 0x0000);
			if (status < 0)
				break;
			/* Settle level */
			level = (((cfg->settleLevel) >> 4) &
				 FE_AG_REG_TGC_SET_LVL__M);
			status = FUNC1(state, FE_AG_REG_TGC_SET_LVL__A, level, 0x0000);
			if (status < 0)
				break;

			/* Min/max: don't care */

			/* Speed: TODO */

			/* enable AGC2 pin */
			{
				u16 FeAgRegAgAgcSio = 0;
				status = FUNC0(state, FE_AG_REG_AG_AGC_SIO__A, &FeAgRegAgAgcSio, 0x0000);
				if (status < 0)
					break;
				FeAgRegAgAgcSio &=
				    ~(FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M);
				FeAgRegAgAgcSio |=
				    FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_OUTPUT;
				status = FUNC1(state, FE_AG_REG_AG_AGC_SIO__A, FeAgRegAgAgcSio, 0x0000);
				if (status < 0)
					break;
			}

		} while (0);
	} else {
		u16 AgModeLop = 0;

		do {
			/* No RF AGC control */
			/* Powerdown PD2, AGC2 as output, WRI source */
			(state->m_FeAgRegAgPwd) &=
			    ~(FE_AG_REG_AG_PWD_PWD_PD2__M);
			(state->m_FeAgRegAgPwd) |=
			    FE_AG_REG_AG_PWD_PWD_PD2_ENABLE;
			status = FUNC1(state, FE_AG_REG_AG_PWD__A, (state->m_FeAgRegAgPwd), 0x0000);
			if (status < 0)
				break;

			status = FUNC0(state, FE_AG_REG_AG_MODE_LOP__A, &AgModeLop, 0x0000);
			if (status < 0)
				break;
			AgModeLop &= (~(FE_AG_REG_AG_MODE_LOP_MODE_5__M |
					FE_AG_REG_AG_MODE_LOP_MODE_E__M));
			AgModeLop |= (FE_AG_REG_AG_MODE_LOP_MODE_5_STATIC |
				      FE_AG_REG_AG_MODE_LOP_MODE_E_STATIC);
			status = FUNC1(state, FE_AG_REG_AG_MODE_LOP__A, AgModeLop, 0x0000);
			if (status < 0)
				break;

			/* set FeAgRegAgAgcSio AGC2 (RF) as input */
			{
				u16 FeAgRegAgAgcSio = 0;
				status = FUNC0(state, FE_AG_REG_AG_AGC_SIO__A, &FeAgRegAgAgcSio, 0x0000);
				if (status < 0)
					break;
				FeAgRegAgAgcSio &=
				    ~(FE_AG_REG_AG_AGC_SIO_AGC_SIO_2__M);
				FeAgRegAgAgcSio |=
				    FE_AG_REG_AG_AGC_SIO_AGC_SIO_2_INPUT;
				status = FUNC1(state, FE_AG_REG_AG_AGC_SIO__A, FeAgRegAgAgcSio, 0x0000);
				if (status < 0)
					break;
			}
		} while (0);
	}
	return status;
}