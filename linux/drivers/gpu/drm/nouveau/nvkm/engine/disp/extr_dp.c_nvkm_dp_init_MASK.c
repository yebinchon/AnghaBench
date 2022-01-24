#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nvkm_outp {TYPE_3__* disp; } ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_13__ {TYPE_5__* conn; } ;
struct nvkm_dp {int /*<<< orphan*/  hpd; TYPE_6__ outp; } ;
struct TYPE_14__ {struct nvkm_gpio* gpio; } ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_12__ {TYPE_4__ info; int /*<<< orphan*/  hpd; } ;
struct TYPE_8__ {TYPE_7__* device; } ;
struct TYPE_9__ {TYPE_1__ subdev; } ;
struct TYPE_10__ {TYPE_2__ engine; } ;

/* Variables and functions */
 scalar_t__ DCB_CONNECTOR_eDP ; 
 int /*<<< orphan*/  DCB_GPIO_PANEL_POWER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nvkm_dp* FUNC1 (struct nvkm_outp*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_dp*,int) ; 
 int FUNC3 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct nvkm_outp *outp)
{
	struct nvkm_gpio *gpio = outp->disp->engine.subdev.device->gpio;
	struct nvkm_dp *dp = FUNC1(outp);

	FUNC6(&dp->outp.conn->hpd);

	/* eDP panels need powering on by us (if the VBIOS doesn't default it
	 * to on) before doing any AUX channel transactions.  LVDS panel power
	 * is handled by the SOR itself, and not required for LVDS DDC.
	 */
	if (dp->outp.conn->info.type == DCB_CONNECTOR_eDP) {
		int power = FUNC3(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff);
		if (power == 0)
			FUNC4(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff, 1);

		/* We delay here unconditionally, even if already powered,
		 * because some laptop panels having a significant resume
		 * delay before the panel begins responding.
		 *
		 * This is likely a bit of a hack, but no better idea for
		 * handling this at the moment.
		 */
		FUNC0(300);

		/* If the eDP panel can't be detected, we need to restore
		 * the panel power GPIO to avoid breaking another output.
		 */
		if (!FUNC2(dp, true) && power == 0)
			FUNC4(gpio, 0, DCB_GPIO_PANEL_POWER, 0xff, 0);
	} else {
		FUNC2(dp, true);
	}

	FUNC5(&dp->hpd);
}