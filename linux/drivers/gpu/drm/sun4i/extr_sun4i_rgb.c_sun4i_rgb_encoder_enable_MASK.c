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
struct sun4i_rgb {scalar_t__ panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct sun4i_rgb* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct sun4i_rgb *rgb = FUNC1(encoder);

	FUNC0("Enabling RGB output\n");

	if (rgb->panel) {
		FUNC3(rgb->panel);
		FUNC2(rgb->panel);
	}
}