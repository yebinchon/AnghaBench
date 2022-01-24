#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_vmw_fence_arg {int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_REF_USAGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct drm_file*) ; 

int FUNC2(struct drm_device *dev, void *data,
			      struct drm_file *file_priv)
{
	struct drm_vmw_fence_arg *arg =
		(struct drm_vmw_fence_arg *) data;

	return FUNC0(FUNC1(file_priv)->tfile,
					 arg->handle,
					 TTM_REF_USAGE);
}