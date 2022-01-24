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
typedef  int uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int CC_DRM_ID_STRAPS__ATI_REV_ID_MASK ; 
 int CC_DRM_ID_STRAPS__ATI_REV_ID__SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCC_DRM_ID_STRAPS ; 

__attribute__((used)) static uint32_t FUNC1(struct amdgpu_device *adev)
{
	return (FUNC0(mmCC_DRM_ID_STRAPS) & CC_DRM_ID_STRAPS__ATI_REV_ID_MASK)
		>> CC_DRM_ID_STRAPS__ATI_REV_ID__SHIFT;
}