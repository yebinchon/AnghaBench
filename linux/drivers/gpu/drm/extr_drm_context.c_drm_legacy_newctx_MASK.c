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
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_ctx {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_KMS_LEGACY_CONTEXT ; 
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct drm_ctx *ctx = data;

	if (!FUNC2(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
	    !FUNC2(dev, DRIVER_LEGACY))
		return -EOPNOTSUPP;

	FUNC0("%d\n", ctx->handle);
	FUNC1(dev, file_priv, ctx->handle);

	return 0;
}