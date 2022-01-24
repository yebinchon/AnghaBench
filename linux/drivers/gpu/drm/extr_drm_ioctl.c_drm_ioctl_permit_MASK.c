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
typedef  int u32 ;
struct drm_file {int /*<<< orphan*/  authenticated; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int DRM_AUTH ; 
 int DRM_MASTER ; 
 int DRM_RENDER_ALLOW ; 
 int DRM_ROOT_ONLY ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_file*) ; 
 scalar_t__ FUNC2 (struct drm_file*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(u32 flags, struct drm_file *file_priv)
{
	/* ROOT_ONLY is only for CAP_SYS_ADMIN */
	if (FUNC3((flags & DRM_ROOT_ONLY) && !FUNC0(CAP_SYS_ADMIN)))
		return -EACCES;

	/* AUTH is only for authenticated or render client */
	if (FUNC3((flags & DRM_AUTH) && !FUNC2(file_priv) &&
		     !file_priv->authenticated))
		return -EACCES;

	/* MASTER is only for master or control clients */
	if (FUNC3((flags & DRM_MASTER) &&
		     !FUNC1(file_priv)))
		return -EACCES;

	/* Render clients must be explicitly allowed */
	if (FUNC3(!(flags & DRM_RENDER_ALLOW) &&
		     FUNC2(file_priv)))
		return -EACCES;

	return 0;
}