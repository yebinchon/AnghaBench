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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int /*<<< orphan*/  crtc_irq; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct drm_device *dev, unsigned int pipe)
{
	struct amdgpu_device *adev = dev->dev_private;
	int idx = FUNC0(adev, pipe);

	FUNC1(adev, &adev->crtc_irq, idx);
}