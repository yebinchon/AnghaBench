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
struct sdi_device {int /*<<< orphan*/  vdds_sdi_reg; TYPE_1__* dss; int /*<<< orphan*/  output; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct sdi_device* FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev)
{
	struct sdi_device *sdi = FUNC3(dssdev);

	FUNC1(&sdi->output);

	FUNC2(sdi->dss);

	FUNC0(sdi->dss->dispc);

	FUNC4(sdi->vdds_sdi_reg);
}