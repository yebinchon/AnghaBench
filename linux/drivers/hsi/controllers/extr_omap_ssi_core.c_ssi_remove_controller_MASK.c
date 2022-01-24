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
struct omap_ssi_controller {int /*<<< orphan*/  fck_nb; int /*<<< orphan*/  fck; int /*<<< orphan*/  gdd_tasklet; } ;
struct hsi_controller {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct omap_ssi_controller* FUNC1 (struct hsi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  platform_omap_ssi_ida ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hsi_controller *ssi)
{
	struct omap_ssi_controller *omap_ssi = FUNC1(ssi);
	int id = ssi->id;
	FUNC4(&omap_ssi->gdd_tasklet);
	FUNC2(ssi);
	FUNC0(omap_ssi->fck, &omap_ssi->fck_nb);
	FUNC3(&platform_omap_ssi_ida, id);
}