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
struct omap_ssi_controller {int /*<<< orphan*/  fck; } ;
struct hsi_controller {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_ssi_controller* FUNC1 (struct hsi_controller*) ; 

__attribute__((used)) static unsigned long FUNC2(struct hsi_controller *ssi)
{
	struct omap_ssi_controller *omap_ssi = FUNC1(ssi);
	unsigned long rate = FUNC0(omap_ssi->fck);
	return rate;
}