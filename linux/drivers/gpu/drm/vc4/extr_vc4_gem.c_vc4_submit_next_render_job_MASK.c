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
struct vc4_exec_info {int /*<<< orphan*/  ct1ea; int /*<<< orphan*/  ct1ca; } ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC1 (struct drm_device*) ; 
 struct vc4_exec_info* FUNC2 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

void
FUNC4(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC1(dev);
	struct vc4_exec_info *exec = FUNC2(vc4);

	if (!exec)
		return;

	/* A previous RCL may have written to one of our textures, and
	 * our full cache flush at bin time may have occurred before
	 * that RCL completed.  Flush the texture cache now, but not
	 * the instructions or uniforms (since we don't write those
	 * from an RCL).
	 */
	FUNC3(dev);

	FUNC0(dev, 1, exec->ct1ca, exec->ct1ea);
}