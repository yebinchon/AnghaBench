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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int controller_id; } ;

/* Variables and functions */
#define  CONTROLLER_ID_D0 133 
#define  CONTROLLER_ID_D1 132 
#define  CONTROLLER_ID_D2 131 
#define  CONTROLLER_ID_D3 130 
#define  CONTROLLER_ID_D4 129 
#define  CONTROLLER_ID_D5 128 
 int /*<<< orphan*/  D1VGA_CONTROL ; 
 int /*<<< orphan*/  D1VGA_MODE_ENABLE ; 
 int /*<<< orphan*/  D1VGA_OVERSCAN_COLOR_EN ; 
 int /*<<< orphan*/  D1VGA_SYNC_POLARITY_SELECT ; 
 int /*<<< orphan*/  D1VGA_TIMING_SELECT ; 
 struct dce110_timing_generator* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmD1VGA_CONTROL ; 
 int /*<<< orphan*/  mmD2VGA_CONTROL ; 
 int /*<<< orphan*/  mmD3VGA_CONTROL ; 
 int /*<<< orphan*/  mmD4VGA_CONTROL ; 
 int /*<<< orphan*/  mmD5VGA_CONTROL ; 
 int /*<<< orphan*/  mmD6VGA_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(
	struct timing_generator *tg)
{
	uint32_t addr = 0;
	uint32_t value = 0;

	struct dce110_timing_generator *tg110 = FUNC0(tg);

	switch (tg110->controller_id) {
	case CONTROLLER_ID_D0:
		addr = mmD1VGA_CONTROL;
		break;
	case CONTROLLER_ID_D1:
		addr = mmD2VGA_CONTROL;
		break;
	case CONTROLLER_ID_D2:
		addr = mmD3VGA_CONTROL;
		break;
	case CONTROLLER_ID_D3:
		addr = mmD4VGA_CONTROL;
		break;
	case CONTROLLER_ID_D4:
		addr = mmD5VGA_CONTROL;
		break;
	case CONTROLLER_ID_D5:
		addr = mmD6VGA_CONTROL;
		break;
	default:
		break;
	}
	value = FUNC1(tg->ctx, addr);

	FUNC3(value, 0, D1VGA_CONTROL, D1VGA_MODE_ENABLE);
	FUNC3(value, 0, D1VGA_CONTROL, D1VGA_TIMING_SELECT);
	FUNC3(
			value, 0, D1VGA_CONTROL, D1VGA_SYNC_POLARITY_SELECT);
	FUNC3(value, 0, D1VGA_CONTROL, D1VGA_OVERSCAN_COLOR_EN);

	FUNC2(tg->ctx, addr, value);
}