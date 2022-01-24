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
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_config {int /*<<< orphan*/  mutex; struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct drm_device {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_device *dev)
{
	struct drm_mode_config *config = &dev->mode_config;
	struct drm_modeset_acquire_ctx *ctx = config->acquire_ctx;

	if (FUNC0(!ctx))
		return;

	config->acquire_ctx = NULL;
	FUNC2(ctx);
	FUNC1(ctx);

	FUNC3(ctx);

	FUNC4(&dev->mode_config.mutex);
}