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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vgem_file*) ; 
 struct vgem_file* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vgem_file*) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, struct drm_file *file)
{
	struct vgem_file *vfile;
	int ret;

	vfile = FUNC1(sizeof(*vfile), GFP_KERNEL);
	if (!vfile)
		return -ENOMEM;

	file->driver_priv = vfile;

	ret = FUNC2(vfile);
	if (ret) {
		FUNC0(vfile);
		return ret;
	}

	return 0;
}