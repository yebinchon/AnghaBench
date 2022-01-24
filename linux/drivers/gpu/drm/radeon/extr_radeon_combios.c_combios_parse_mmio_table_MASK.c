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
typedef  int uint16_t ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_CLK_PWRMGT_CNTL ; 
 int RADEON_MC_BUSY ; 
 int RADEON_MC_IDLE ; 
 int RADEON_MC_STATUS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, uint16_t offset)
{
	struct radeon_device *rdev = dev->dev_private;

	if (offset) {
		while (FUNC0(offset)) {
			uint16_t cmd = ((FUNC0(offset) & 0xe000) >> 13);
			uint32_t addr = (FUNC0(offset) & 0x1fff);
			uint32_t val, and_mask, or_mask;
			uint32_t tmp;

			offset += 2;
			switch (cmd) {
			case 0:
				val = FUNC1(offset);
				offset += 4;
				FUNC4(addr, val);
				break;
			case 1:
				val = FUNC1(offset);
				offset += 4;
				FUNC4(addr, val);
				break;
			case 2:
				and_mask = FUNC1(offset);
				offset += 4;
				or_mask = FUNC1(offset);
				offset += 4;
				tmp = FUNC2(addr);
				tmp &= and_mask;
				tmp |= or_mask;
				FUNC4(addr, tmp);
				break;
			case 3:
				and_mask = FUNC1(offset);
				offset += 4;
				or_mask = FUNC1(offset);
				offset += 4;
				tmp = FUNC2(addr);
				tmp &= and_mask;
				tmp |= or_mask;
				FUNC4(addr, tmp);
				break;
			case 4:
				val = FUNC0(offset);
				offset += 2;
				FUNC5(val);
				break;
			case 5:
				val = FUNC0(offset);
				offset += 2;
				switch (addr) {
				case 8:
					while (val--) {
						if (!
						    (FUNC3
						     (RADEON_CLK_PWRMGT_CNTL) &
						     RADEON_MC_BUSY))
							break;
					}
					break;
				case 9:
					while (val--) {
						if ((FUNC2(RADEON_MC_STATUS) &
						     RADEON_MC_IDLE))
							break;
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