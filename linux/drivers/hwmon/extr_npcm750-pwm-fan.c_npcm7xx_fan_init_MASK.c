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
typedef  int u32 ;
struct npcm7xx_pwm_fan_data {int input_clk_freq; int /*<<< orphan*/  fan_clk; TYPE_1__* fan_dev; int /*<<< orphan*/  fan_base; } ;
struct TYPE_2__ {scalar_t__ fan_cnt; int /*<<< orphan*/  fan_pls_per_rev; int /*<<< orphan*/  fan_st_flg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAN_DISABLE ; 
 int NPCM7XX_FAN_CLK_PRESCALE ; 
 int /*<<< orphan*/  NPCM7XX_FAN_DEFAULT_PULSE_PER_REVOLUTION ; 
 int NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE ; 
 int NPCM7XX_FAN_MAX_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int NPCM7XX_FAN_TCKC_CLKX_NONE ; 
 int /*<<< orphan*/  NPCM7XX_FAN_TCNT ; 
 int /*<<< orphan*/  NPCM7XX_FAN_TCPA ; 
 int /*<<< orphan*/  NPCM7XX_FAN_TCPB ; 
 int NPCM7XX_FAN_TCPCFG_EQAEN ; 
 int NPCM7XX_FAN_TCPCFG_EQBEN ; 
 int NPCM7XX_FAN_TICLR_CLEAR_ALL ; 
 int NPCM7XX_FAN_TINASEL_FANIN_DEFAULT ; 
 int NPCM7XX_FAN_TMCTRL_MODE_5 ; 
 int NPCM7XX_FAN_TMCTRL_TAEN ; 
 int NPCM7XX_FAN_TMCTRL_TBEN ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct npcm7xx_pwm_fan_data *data)
{
	int md;
	int ch;
	int i;
	u32 apb_clk_freq;

	for (md = 0; md < NPCM7XX_FAN_MAX_MODULE; md++) {
		/* stop FAN0~7 clock */
		FUNC14(NPCM7XX_FAN_TCKC_CLKX_NONE,
			 FUNC0(data->fan_base, md));

		/* disable all interrupt */
		FUNC14(0x00, FUNC7(data->fan_base, md));

		/* clear all interrupt */
		FUNC14(NPCM7XX_FAN_TICLR_CLEAR_ALL,
			 FUNC6(data->fan_base, md));

		/* set FAN0~7 clock prescaler */
		FUNC14(NPCM7XX_FAN_CLK_PRESCALE,
			 FUNC11(data->fan_base, md));

		/* set FAN0~7 mode (high-to-low transition) */
		FUNC14((NPCM7XX_FAN_TMCTRL_MODE_5 | NPCM7XX_FAN_TMCTRL_TBEN |
			  NPCM7XX_FAN_TMCTRL_TAEN),
			 FUNC10(data->fan_base, md));

		/* set FAN0~7 Initial Count/Cap */
		FUNC13(NPCM7XX_FAN_TCNT,
			  FUNC1(data->fan_base, md));
		FUNC13(NPCM7XX_FAN_TCNT,
			  FUNC2(data->fan_base, md));

		/* set FAN0~7 compare (equal to count) */
		FUNC14((NPCM7XX_FAN_TCPCFG_EQAEN | NPCM7XX_FAN_TCPCFG_EQBEN),
			 FUNC5(data->fan_base, md));

		/* set FAN0~7 compare value */
		FUNC13(NPCM7XX_FAN_TCPA,
			  FUNC3(data->fan_base, md));
		FUNC13(NPCM7XX_FAN_TCPB,
			  FUNC4(data->fan_base, md));

		/* set FAN0~7 fan input FANIN 0~15 */
		FUNC14(NPCM7XX_FAN_TINASEL_FANIN_DEFAULT,
			 FUNC8(data->fan_base, md));
		FUNC14(NPCM7XX_FAN_TINASEL_FANIN_DEFAULT,
			 FUNC9(data->fan_base, md));

		for (i = 0; i < NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE; i++) {
			ch = md * NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE + i;
			data->fan_dev[ch].fan_st_flg = FAN_DISABLE;
			data->fan_dev[ch].fan_pls_per_rev =
				NPCM7XX_FAN_DEFAULT_PULSE_PER_REVOLUTION;
			data->fan_dev[ch].fan_cnt = 0;
		}
	}

	apb_clk_freq = FUNC12(data->fan_clk);

	/* Fan tach input clock = APB clock / prescalar, default is 255. */
	data->input_clk_freq = apb_clk_freq / (NPCM7XX_FAN_CLK_PRESCALE + 1);
}