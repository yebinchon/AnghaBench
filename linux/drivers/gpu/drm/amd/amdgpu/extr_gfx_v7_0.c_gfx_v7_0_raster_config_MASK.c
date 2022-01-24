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
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
#define  CHIP_BONAIRE 132 
#define  CHIP_HAWAII 131 
#define  CHIP_KABINI 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(struct amdgpu_device *adev, u32 *rconf, u32 *rconf1)
{
	switch (adev->asic_type) {
	case CHIP_BONAIRE:
		*rconf |= FUNC4(2) | FUNC6(1) | FUNC7(2) |
			  FUNC11(1) | FUNC12(1);
		*rconf1 |= 0x0;
		break;
	case CHIP_HAWAII:
		*rconf |= FUNC4(2) | FUNC5(2) |
			  FUNC6(1) | FUNC1(2) | FUNC2(1) |
			  FUNC3(1) | FUNC7(2) | FUNC11(2) |
			  FUNC12(3);
		*rconf1 |= FUNC8(2) | FUNC9(3) |
			   FUNC10(2);
		break;
	case CHIP_KAVERI:
		*rconf |= FUNC4(2);
		*rconf1 |= 0x0;
		break;
	case CHIP_KABINI:
	case CHIP_MULLINS:
		*rconf |= 0x0;
		*rconf1 |= 0x0;
		break;
	default:
		FUNC0("unknown asic: 0x%x\n", adev->asic_type);
		break;
	}
}