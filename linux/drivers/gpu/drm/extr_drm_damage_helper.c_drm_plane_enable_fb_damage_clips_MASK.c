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
struct drm_plane {int /*<<< orphan*/  base; struct drm_device* dev; } ;
struct drm_mode_config {int /*<<< orphan*/  prop_fb_damage_clips; } ;
struct drm_device {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;
	struct drm_mode_config *config = &dev->mode_config;

	FUNC0(&plane->base, config->prop_fb_damage_clips,
				   0);
}