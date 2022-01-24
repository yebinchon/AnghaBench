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
struct radeon_device {scalar_t__ family; int num_crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ CAYMAN_DMA1_CNTL ; 
 scalar_t__ CHIP_CAYMAN ; 
 int CNTX_BUSY_INT_ENABLE ; 
 int CNTX_EMPTY_INT_ENABLE ; 
 scalar_t__ CP_INT_CNTL ; 
 scalar_t__ DACA_AUTODETECT_INT_CONTROL ; 
 scalar_t__ DACB_AUTODETECT_INT_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DC_HPDx_INT_POLARITY ; 
 scalar_t__ DMA_CNTL ; 
 scalar_t__ GRBM_INT_CNTL ; 
 scalar_t__ GRPH_INT_CONTROL ; 
 scalar_t__ INT_MASK ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ SRBM_INT_CNTL ; 
 int TRAP_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int) ; 
 scalar_t__* crtc_offsets ; 

void FUNC6(struct radeon_device *rdev)
{
	int i;
	u32 tmp;

	if (rdev->family >= CHIP_CAYMAN) {
		FUNC5(rdev, 0,
					 CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
		FUNC5(rdev, 1, 0);
		FUNC5(rdev, 2, 0);
		tmp = FUNC2(CAYMAN_DMA1_CNTL) & ~TRAP_ENABLE;
		FUNC3(CAYMAN_DMA1_CNTL, tmp);
	} else
		FUNC3(CP_INT_CNTL, CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
	tmp = FUNC2(DMA_CNTL) & ~TRAP_ENABLE;
	FUNC3(DMA_CNTL, tmp);
	FUNC3(GRBM_INT_CNTL, 0);
	FUNC3(SRBM_INT_CNTL, 0);
	for (i = 0; i < rdev->num_crtc; i++)
		FUNC3(INT_MASK + crtc_offsets[i], 0);
	for (i = 0; i < rdev->num_crtc; i++)
		FUNC3(GRPH_INT_CONTROL + crtc_offsets[i], 0);

	/* only one DAC on DCE5 */
	if (!FUNC0(rdev))
		FUNC3(DACA_AUTODETECT_INT_CONTROL, 0);
	FUNC3(DACB_AUTODETECT_INT_CONTROL, 0);

	for (i = 0; i < 6; i++)
		FUNC4(FUNC1(i), DC_HPDx_INT_POLARITY);
}