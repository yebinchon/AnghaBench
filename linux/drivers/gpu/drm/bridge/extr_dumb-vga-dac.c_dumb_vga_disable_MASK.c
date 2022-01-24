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
struct dumb_vga {scalar_t__ vdd; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct dumb_vga* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct drm_bridge *bridge)
{
	struct dumb_vga *vga = FUNC0(bridge);

	if (vga->vdd)
		FUNC1(vga->vdd);
}