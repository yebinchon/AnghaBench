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
typedef  size_t u8 ;
struct npcm7xx_pwm_fan_data {int /*<<< orphan*/ * fan_lock; int /*<<< orphan*/  fan_base; TYPE_1__* fan_dev; } ;
struct TYPE_2__ {scalar_t__ fan_st_flg; } ;

/* Variables and functions */
 scalar_t__ FAN_DISABLE ; 
 scalar_t__ FAN_INIT ; 
 size_t NPCM7XX_FAN_CMPA ; 
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 size_t NPCM7XX_FAN_TCKC_CLK1_APB ; 
 size_t NPCM7XX_FAN_TCKC_CLK2_APB ; 
 size_t NPCM7XX_FAN_TIEN_TAIEN ; 
 size_t NPCM7XX_FAN_TIEN_TBIEN ; 
 size_t NPCM7XX_FAN_TIEN_TEIEN ; 
 size_t NPCM7XX_FAN_TIEN_TFIEN ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC7(struct npcm7xx_pwm_fan_data *data,
					     u8 fan, u8 cmp)
{
	u8 fan_id;
	u8 reg_mode;
	u8 reg_int;
	unsigned long flags;

	fan_id = FUNC0(fan, cmp);

	/* to check whether any fan tach is enable */
	if (data->fan_dev[fan_id].fan_st_flg != FAN_DISABLE) {
		/* reset status */
		FUNC5(&data->fan_lock[fan], flags);

		data->fan_dev[fan_id].fan_st_flg = FAN_INIT;
		reg_int = FUNC3(FUNC2(data->fan_base, fan));

		/*
		 * the interrupt enable bits do not need to be cleared before
		 * it sets, the interrupt enable bits are cleared only on reset.
		 * the clock unit control register is behaving in the same
		 * manner that the interrupt enable register behave.
		 */
		if (cmp == NPCM7XX_FAN_CMPA) {
			/* enable interrupt */
			FUNC4(reg_int | (NPCM7XX_FAN_TIEN_TAIEN |
					    NPCM7XX_FAN_TIEN_TEIEN),
				 FUNC2(data->fan_base, fan));

			reg_mode = NPCM7XX_FAN_TCKC_CLK1_APB
				| FUNC3(FUNC1(data->fan_base,
							       fan));

			/* start to Capture */
			FUNC4(reg_mode, FUNC1(data->fan_base,
								fan));
		} else {
			/* enable interrupt */
			FUNC4(reg_int | (NPCM7XX_FAN_TIEN_TBIEN |
					    NPCM7XX_FAN_TIEN_TFIEN),
				 FUNC2(data->fan_base, fan));

			reg_mode =
				NPCM7XX_FAN_TCKC_CLK2_APB
				| FUNC3(FUNC1(data->fan_base,
							       fan));

			/* start to Capture */
			FUNC4(reg_mode,
				 FUNC1(data->fan_base, fan));
		}

		FUNC6(&data->fan_lock[fan], flags);
	}
}