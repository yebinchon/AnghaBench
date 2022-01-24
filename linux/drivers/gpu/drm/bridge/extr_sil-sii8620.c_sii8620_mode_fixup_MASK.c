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
struct sii8620 {int /*<<< orphan*/  lock; int /*<<< orphan*/  use_packed_pixel; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct sii8620* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*,struct drm_display_mode*) ; 

__attribute__((used)) static bool FUNC4(struct drm_bridge *bridge,
			       const struct drm_display_mode *mode,
			       struct drm_display_mode *adjusted_mode)
{
	struct sii8620 *ctx = FUNC0(bridge);

	FUNC1(&ctx->lock);

	ctx->use_packed_pixel = FUNC3(ctx, adjusted_mode);

	FUNC2(&ctx->lock);

	return true;
}