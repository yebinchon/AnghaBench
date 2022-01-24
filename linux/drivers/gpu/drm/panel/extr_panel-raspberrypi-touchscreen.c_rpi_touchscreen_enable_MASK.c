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
struct rpi_touchscreen {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DSI_LANEENABLE ; 
 int DSI_LANEENABLE_CLOCK ; 
 int DSI_LANEENABLE_D0 ; 
 int /*<<< orphan*/  DSI_STARTDSI ; 
 int /*<<< orphan*/  LCDCTRL ; 
 int /*<<< orphan*/  PPI_D0S_ATMR ; 
 int /*<<< orphan*/  PPI_D0S_CLRSIPOCOUNT ; 
 int /*<<< orphan*/  PPI_D1S_ATMR ; 
 int /*<<< orphan*/  PPI_D1S_CLRSIPOCOUNT ; 
 int /*<<< orphan*/  PPI_LPTXTIMECNT ; 
 int /*<<< orphan*/  PPI_STARTPPI ; 
 int /*<<< orphan*/  REG_PORTA ; 
 int /*<<< orphan*/  REG_PORTB ; 
 int /*<<< orphan*/  REG_POWERON ; 
 int /*<<< orphan*/  REG_PWM ; 
 int /*<<< orphan*/  SPICMR ; 
 int /*<<< orphan*/  SYSCTRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rpi_touchscreen* FUNC2 (struct drm_panel*) ; 
 int FUNC3 (struct rpi_touchscreen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpi_touchscreen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rpi_touchscreen*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct rpi_touchscreen *ts = FUNC2(panel);
	int i;

	FUNC4(ts, REG_POWERON, 1);
	/* Wait for nPWRDWN to go low to indicate poweron is done. */
	for (i = 0; i < 100; i++) {
		if (FUNC3(ts, REG_PORTB) & 1)
			break;
	}

	FUNC5(ts, DSI_LANEENABLE,
			      DSI_LANEENABLE_CLOCK |
			      DSI_LANEENABLE_D0);
	FUNC5(ts, PPI_D0S_CLRSIPOCOUNT, 0x05);
	FUNC5(ts, PPI_D1S_CLRSIPOCOUNT, 0x05);
	FUNC5(ts, PPI_D0S_ATMR, 0x00);
	FUNC5(ts, PPI_D1S_ATMR, 0x00);
	FUNC5(ts, PPI_LPTXTIMECNT, 0x03);

	FUNC5(ts, SPICMR, 0x00);
	FUNC5(ts, LCDCTRL, 0x00100150);
	FUNC5(ts, SYSCTRL, 0x040f);
	FUNC1(100);

	FUNC5(ts, PPI_STARTPPI, 0x01);
	FUNC5(ts, DSI_STARTDSI, 0x01);
	FUNC1(100);

	/* Turn on the backlight. */
	FUNC4(ts, REG_PWM, 255);

	/* Default to the same orientation as the closed source
	 * firmware used for the panel.  Runtime rotation
	 * configuration will be supported using VC4's plane
	 * orientation bits.
	 */
	FUNC4(ts, REG_PORTA, FUNC0(2));

	return 0;
}