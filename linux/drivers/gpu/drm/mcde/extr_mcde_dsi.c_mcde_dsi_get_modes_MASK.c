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
struct mcde_dsi {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 struct mcde_dsi* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	struct mcde_dsi *d = FUNC0(connector);

	/* Just pass the question to the panel */
	if (d->panel)
		return FUNC1(d->panel);

	/* TODO: deal with bridges */

	return 0;
}