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
struct sti_vtg {int dummy; } ;
struct sti_private {struct sti_compositor* compo; } ;
struct sti_compositor {struct sti_vtg** vtg; struct notifier_block* vtg_vblank_nb; } ;
struct notifier_block {int dummy; } ;
struct drm_device {struct sti_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct sti_vtg*,struct notifier_block*) ; 

void FUNC2(struct drm_device *drm_dev, unsigned int pipe)
{
	struct sti_private *priv = drm_dev->dev_private;
	struct sti_compositor *compo = priv->compo;
	struct notifier_block *vtg_vblank_nb = &compo->vtg_vblank_nb[pipe];
	struct sti_vtg *vtg = compo->vtg[pipe];

	FUNC0("\n");

	if (FUNC1(vtg, vtg_vblank_nb))
		FUNC0("Warning: cannot unregister VTG notifier\n");
}