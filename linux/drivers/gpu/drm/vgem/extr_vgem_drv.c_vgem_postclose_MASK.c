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
struct vgem_file {int dummy; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vgem_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct vgem_file*) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev, struct drm_file *file)
{
	struct vgem_file *vfile = file->driver_priv;

	FUNC1(vfile);
	FUNC0(vfile);
}