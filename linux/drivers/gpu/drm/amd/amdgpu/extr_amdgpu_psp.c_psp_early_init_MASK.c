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
struct psp_context {int autoload_supported; struct amdgpu_device* adev; } ;
struct amdgpu_device {int asic_type; struct psp_context psp; } ;

/* Variables and functions */
#define  CHIP_ARCTURUS 136 
#define  CHIP_NAVI10 135 
#define  CHIP_NAVI12 134 
#define  CHIP_NAVI14 133 
#define  CHIP_RAVEN 132 
#define  CHIP_RENOIR 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct psp_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct psp_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct psp_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct psp_context*) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct psp_context *psp = &adev->psp;

	FUNC0(adev);

	switch (adev->asic_type) {
	case CHIP_VEGA10:
	case CHIP_VEGA12:
		FUNC4(psp);
		psp->autoload_supported = false;
		break;
	case CHIP_RAVEN:
		FUNC1(psp);
		psp->autoload_supported = false;
		break;
	case CHIP_VEGA20:
	case CHIP_ARCTURUS:
		FUNC2(psp);
		psp->autoload_supported = false;
		break;
	case CHIP_NAVI10:
	case CHIP_NAVI14:
	case CHIP_NAVI12:
		FUNC2(psp);
		psp->autoload_supported = true;
		break;
	case CHIP_RENOIR:
		FUNC3(psp);
		break;
	default:
		return -EINVAL;
	}

	psp->adev = adev;

	return 0;
}