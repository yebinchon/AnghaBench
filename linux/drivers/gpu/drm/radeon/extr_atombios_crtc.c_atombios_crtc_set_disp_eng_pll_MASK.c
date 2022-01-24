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
struct TYPE_5__ {void* ucPpll; int /*<<< orphan*/  ulDispEngClkFreq; } ;
struct TYPE_4__ {void* ucPpll; int /*<<< orphan*/  usPixelClock; int /*<<< orphan*/  ucCRTC; } ;
union set_pixel_clock {TYPE_2__ v6; TYPE_1__ v5; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_CRTC_INVALID ; 
 void* ATOM_DCPLL ; 
 void* ATOM_EXT_PLL1 ; 
 void* ATOM_PPLL0 ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetPixelClock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union set_pixel_clock*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct radeon_device *rdev,
				    u32 dispclk)
{
	u8 frev, crev;
	int index;
	union set_pixel_clock args;

	FUNC9(&args, 0, sizeof(args));

	index = FUNC4(COMMAND, SetPixelClock);
	if (!FUNC6(rdev->mode_info.atom_context, index, &frev,
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
			args.v5.usPixelClock = FUNC7(dispclk);
			args.v5.ucPpll = ATOM_DCPLL;
			break;
		case 6:
			/* if the default dcpll clock is specified,
			 * SetPixelClock provides the dividers
			 */
			args.v6.ulDispEngClkFreq = FUNC8(dispclk);
			if (FUNC1(rdev) || FUNC2(rdev))
				args.v6.ucPpll = ATOM_EXT_PLL1;
			else if (FUNC0(rdev))
				args.v6.ucPpll = ATOM_PPLL0;
			else
				args.v6.ucPpll = ATOM_DCPLL;
			break;
		default:
			FUNC3("Unknown table version %d %d\n", frev, crev);
			return;
		}
		break;
	default:
		FUNC3("Unknown table version %d %d\n", frev, crev);
		return;
	}
	FUNC5(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}