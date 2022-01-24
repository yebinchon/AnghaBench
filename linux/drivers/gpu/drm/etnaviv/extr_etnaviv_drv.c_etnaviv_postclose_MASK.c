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
struct etnaviv_gpu {int dummy; } ;
struct etnaviv_file_private {int /*<<< orphan*/  mmu; int /*<<< orphan*/ * sched_entity; } ;
struct etnaviv_drm_private {struct etnaviv_gpu** gpu; } ;
struct drm_file {struct etnaviv_file_private* driver_priv; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;

/* Variables and functions */
 unsigned int ETNA_MAX_PIPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_file_private*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev, struct drm_file *file)
{
	struct etnaviv_drm_private *priv = dev->dev_private;
	struct etnaviv_file_private *ctx = file->driver_priv;
	unsigned int i;

	for (i = 0; i < ETNA_MAX_PIPES; i++) {
		struct etnaviv_gpu *gpu = priv->gpu[i];

		if (gpu)
			FUNC0(&ctx->sched_entity[i]);
	}

	FUNC1(ctx->mmu);

	FUNC2(ctx);
}