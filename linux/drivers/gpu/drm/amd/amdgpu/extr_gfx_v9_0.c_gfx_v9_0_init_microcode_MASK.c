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
struct amdgpu_device {int asic_type; int rev_id; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_ARCTURUS 133 
#define  CHIP_RAVEN 132 
#define  CHIP_RENOIR 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct amdgpu_device*,char const*) ; 
 int FUNC3 (struct amdgpu_device*,char const*) ; 
 int FUNC4 (struct amdgpu_device*,char const*) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	const char *chip_name;
	int r;

	FUNC1("\n");

	switch (adev->asic_type) {
	case CHIP_VEGA10:
		chip_name = "vega10";
		break;
	case CHIP_VEGA12:
		chip_name = "vega12";
		break;
	case CHIP_VEGA20:
		chip_name = "vega20";
		break;
	case CHIP_RAVEN:
		if (adev->rev_id >= 8)
			chip_name = "raven2";
		else if (adev->pdev->device == 0x15d8)
			chip_name = "picasso";
		else
			chip_name = "raven";
		break;
	case CHIP_ARCTURUS:
		chip_name = "arcturus";
		break;
	case CHIP_RENOIR:
		chip_name = "renoir";
		break;
	default:
		FUNC0();
	}

	/* No CPG in Arcturus */
	if (adev->asic_type != CHIP_ARCTURUS) {
		r = FUNC3(adev, chip_name);
		if (r)
			return r;
	}

	r = FUNC4(adev, chip_name);
	if (r)
		return r;

	r = FUNC2(adev, chip_name);
	if (r)
		return r;

	return r;
}