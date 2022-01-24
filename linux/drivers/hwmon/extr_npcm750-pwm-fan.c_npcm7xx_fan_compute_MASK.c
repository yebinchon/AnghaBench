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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct npcm7xx_pwm_fan_data {int /*<<< orphan*/  fan_base; TYPE_1__* fan_dev; } ;
struct TYPE_2__ {scalar_t__ fan_st_flg; int fan_cnt_tmp; int fan_cnt; } ;

/* Variables and functions */
 int FAN_ENOUGH_SAMPLE ; 
 scalar_t__ FAN_INIT ; 
 scalar_t__ FAN_PREPARE_TO_GET_FIRST_CAPTURE ; 
 scalar_t__ NPCM7XX_FAN_CMPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ NPCM7XX_FAN_TCNT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct npcm7xx_pwm_fan_data *data,
				       u8 fan, u8 cmp, u8 fan_id, u8 flag_int,
				       u8 flag_mode, u8 flag_clear)
{
	u8  reg_int;
	u8  reg_mode;
	u16 fan_cap;

	if (cmp == NPCM7XX_FAN_CMPA)
		fan_cap = FUNC5(FUNC1(data->fan_base, fan));
	else
		fan_cap = FUNC5(FUNC2(data->fan_base, fan));

	/* clear capature flag, H/W will auto reset the NPCM7XX_FAN_TCNTx */
	FUNC7(flag_clear, FUNC3(data->fan_base, fan));

	if (data->fan_dev[fan_id].fan_st_flg == FAN_INIT) {
		/* First capture, drop it */
		data->fan_dev[fan_id].fan_st_flg =
			FAN_PREPARE_TO_GET_FIRST_CAPTURE;

		/* reset counter */
		data->fan_dev[fan_id].fan_cnt_tmp = 0;
	} else if (data->fan_dev[fan_id].fan_st_flg < FAN_ENOUGH_SAMPLE) {
		/*
		 * collect the enough sample,
		 * (ex: 2 pulse fan need to get 2 sample)
		 */
		data->fan_dev[fan_id].fan_cnt_tmp +=
			(NPCM7XX_FAN_TCNT - fan_cap);

		data->fan_dev[fan_id].fan_st_flg++;
	} else {
		/* get enough sample or fan disable */
		if (data->fan_dev[fan_id].fan_st_flg == FAN_ENOUGH_SAMPLE) {
			data->fan_dev[fan_id].fan_cnt_tmp +=
				(NPCM7XX_FAN_TCNT - fan_cap);

			/* compute finial average cnt per pulse */
			data->fan_dev[fan_id].fan_cnt =
				data->fan_dev[fan_id].fan_cnt_tmp /
				FAN_ENOUGH_SAMPLE;

			data->fan_dev[fan_id].fan_st_flg = FAN_INIT;
		}

		reg_int =  FUNC6(FUNC4(data->fan_base, fan));

		/* disable interrupt */
		FUNC7((reg_int & ~flag_int),
			 FUNC4(data->fan_base, fan));
		reg_mode =  FUNC6(FUNC0(data->fan_base, fan));

		/* stop capturing */
		FUNC7((reg_mode & ~flag_mode),
			 FUNC0(data->fan_base, fan));
	}
}