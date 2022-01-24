#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_ssi_controller {int /*<<< orphan*/  gdd_gcr; scalar_t__ sys; int /*<<< orphan*/  fck_rate; scalar_t__ gdd; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct hsi_controller {TYPE_1__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SSI_CLK_AUTOGATING_ON ; 
 scalar_t__ SSI_GDD_GCR_REG ; 
 scalar_t__ SSI_GDD_GRST_REG ; 
 int /*<<< orphan*/  SSI_SWRESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct omap_ssi_controller* FUNC3 (struct hsi_controller*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hsi_controller*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct hsi_controller *ssi)
{
	struct omap_ssi_controller *omap_ssi = FUNC3(ssi);
	int err;

	err = FUNC4(ssi->device.parent);
	if (err < 0) {
		FUNC2(&ssi->device, "runtime PM failed %d\n", err);
		return err;
	}
	/* Resetting GDD */
	FUNC7(SSI_SWRESET, omap_ssi->gdd + SSI_GDD_GRST_REG);
	/* Get FCK rate in kHz */
	omap_ssi->fck_rate = FUNC0(FUNC6(ssi), 1000);
	FUNC1(&ssi->device, "SSI fck rate %lu kHz\n", omap_ssi->fck_rate);

	FUNC7(SSI_CLK_AUTOGATING_ON, omap_ssi->sys + SSI_GDD_GCR_REG);
	omap_ssi->gdd_gcr = SSI_CLK_AUTOGATING_ON;
	FUNC5(ssi->device.parent);

	return 0;
}