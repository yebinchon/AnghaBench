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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int RADEON_CG_NO1_DEBUG_0 ; 
 int RADEON_CLK_PWRMGT_CNTL ; 
 int RADEON_DLL_READY ; 
 int RADEON_MCLK_CNTL ; 
 int RADEON_MC_BUSY ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, uint16_t offset)
{
	struct radeon_device *rdev = dev->dev_private;

	if (offset) {
		while (FUNC1(offset)) {
			uint8_t cmd = ((FUNC1(offset) & 0xc0) >> 6);
			uint8_t addr = (FUNC1(offset) & 0x3f);
			uint32_t val, shift, tmp;
			uint32_t and_mask, or_mask;

			offset++;
			switch (cmd) {
			case 0:
				val = FUNC0(offset);
				offset += 4;
				FUNC3(addr, val);
				break;
			case 1:
				shift = FUNC1(offset) * 8;
				offset++;
				and_mask = FUNC1(offset) << shift;
				and_mask |= ~(0xff << shift);
				offset++;
				or_mask = FUNC1(offset) << shift;
				offset++;
				tmp = FUNC2(addr);
				tmp &= and_mask;
				tmp |= or_mask;
				FUNC3(addr, tmp);
				break;
			case 2:
			case 3:
				tmp = 1000;
				switch (addr) {
				case 1:
					FUNC5(150);
					break;
				case 2:
					FUNC4(1);
					break;
				case 3:
					while (tmp--) {
						if (!
						    (FUNC2
						     (RADEON_CLK_PWRMGT_CNTL) &
						     RADEON_MC_BUSY))
							break;
					}
					break;
				case 4:
					while (tmp--) {
						if (FUNC2
						    (RADEON_CLK_PWRMGT_CNTL) &
						    RADEON_DLL_READY)
							break;
					}
					break;
				case 5:
					tmp =
					    FUNC2(RADEON_CLK_PWRMGT_CNTL);
					if (tmp & RADEON_CG_NO1_DEBUG_0) {
#if 0
						uint32_t mclk_cntl =
						    RREG32_PLL
						    (RADEON_MCLK_CNTL);
						mclk_cntl &= 0xffff0000;
						/*mclk_cntl |= 0x00001111;*//* ??? */
						WREG32_PLL(RADEON_MCLK_CNTL,
							   mclk_cntl);
						mdelay(10);
#endif
						FUNC3
						    (RADEON_CLK_PWRMGT_CNTL,
						     tmp &
						     ~RADEON_CG_NO1_DEBUG_0);
						FUNC4(10);
					}
					break;
				default:
					break;
				}
				break;
			default:
				break;
			}
		}
	}
}