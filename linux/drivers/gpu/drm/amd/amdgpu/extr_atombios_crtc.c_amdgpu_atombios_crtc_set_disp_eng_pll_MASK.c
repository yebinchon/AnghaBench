#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ucPpll; int /*<<< orphan*/  ulDispEngClkFreq; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucPpll; int /*<<< orphan*/  usPixelClock; int /*<<< orphan*/  ucCRTC; } ;
union set_pixel_clock {TYPE_2__ v6; TYPE_1__ v5; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  atom_context; } ;
struct amdgpu_device {TYPE_3__ mode_info; int /*<<< orphan*/  asic_type; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_CRTC_INVALID ; 
 int /*<<< orphan*/  ATOM_DCPLL ; 
 int /*<<< orphan*/  ATOM_EXT_PLL1 ; 
 int /*<<< orphan*/  ATOM_PPLL0 ; 
 int /*<<< orphan*/  CHIP_OLAND ; 
 int /*<<< orphan*/  CHIP_PITCAIRN ; 
 int /*<<< orphan*/  CHIP_TAHITI ; 
 int /*<<< orphan*/  CHIP_VERDE ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetPixelClock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union set_pixel_clock*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct amdgpu_device *adev,
					   u32 dispclk)
{
	u8 frev, crev;
	int index;
	union set_pixel_clock args;

	FUNC6(&args, 0, sizeof(args));

	index = FUNC1(COMMAND, SetPixelClock);
	if (!FUNC3(adev->mode_info.atom_context, index, &frev,
				   &crev))
		return;

	switch (frev) {
	case 1:
		switch (crev) {
		case 5:
			/* if the default dcpll clock is specified,
			 * SetPixelClock provides the dividers
			 */
			args.v5.ucCRTC = ATOM_CRTC_INVALID;
			args.v5.usPixelClock = FUNC4(dispclk);
			args.v5.ucPpll = ATOM_DCPLL;
			break;
		case 6:
			/* if the default dcpll clock is specified,
			 * SetPixelClock provides the dividers
			 */
			args.v6.ulDispEngClkFreq = FUNC5(dispclk);
			if (adev->asic_type == CHIP_TAHITI ||
			    adev->asic_type == CHIP_PITCAIRN ||
			    adev->asic_type == CHIP_VERDE ||
			    adev->asic_type == CHIP_OLAND)
				args.v6.ucPpll = ATOM_PPLL0;
			else
				args.v6.ucPpll = ATOM_EXT_PLL1;
			break;
		default:
			FUNC0("Unknown table version %d %d\n", frev, crev);
			return;
		}
		break;
	default:
		FUNC0("Unknown table version %d %d\n", frev, crev);
		return;
	}
	FUNC2(adev->mode_info.atom_context, index, (uint32_t *)&args);
}