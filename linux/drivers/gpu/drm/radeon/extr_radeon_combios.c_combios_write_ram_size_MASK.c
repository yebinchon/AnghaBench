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
struct radeon_device {int flags; scalar_t__ family; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ CHIP_R200 ; 
 int /*<<< orphan*/  COMBIOS_DETECTED_MEM_TABLE ; 
 int /*<<< orphan*/  COMBIOS_MEM_CONFIG_TABLE ; 
 int /*<<< orphan*/  RADEON_CONFIG_MEMSIZE ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  RADEON_MEM_CNTL ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct drm_device*,int,int) ; 
 scalar_t__ FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;
	uint8_t rev;
	uint16_t offset;
	uint32_t mem_size = 0;
	uint32_t mem_cntl = 0;

	/* should do something smarter here I guess... */
	if (rdev->flags & RADEON_IS_IGP)
		return;

	/* first check detected mem table */
	offset = FUNC6(dev, COMBIOS_DETECTED_MEM_TABLE);
	if (offset) {
		rev = FUNC3(offset);
		if (rev < 3) {
			mem_cntl = FUNC2(offset + 1);
			mem_size = FUNC1(offset + 5);
			if ((rdev->family < CHIP_R200) &&
			    !FUNC0(rdev))
				FUNC4(RADEON_MEM_CNTL, mem_cntl);
		}
	}

	if (!mem_size) {
		offset =
		    FUNC6(dev, COMBIOS_MEM_CONFIG_TABLE);
		if (offset) {
			rev = FUNC3(offset - 1);
			if (rev < 1) {
				if ((rdev->family < CHIP_R200)
				    && !FUNC0(rdev)) {
					int ram = 0;
					int mem_addr_mapping = 0;

					while (FUNC3(offset)) {
						ram = FUNC3(offset);
						mem_addr_mapping =
						    FUNC3(offset + 1);
						if (mem_addr_mapping != 0x25)
							ram *= 2;
						mem_size =
						    FUNC5(dev, ram,
								       mem_addr_mapping);
						if (mem_size)
							break;
						offset += 2;
					}
				} else
					mem_size = FUNC3(offset);
			} else {
				mem_size = FUNC3(offset);
				mem_size *= 2;	/* convert to MB */
			}
		}
	}

	mem_size *= (1024 * 1024);	/* convert to bytes */
	FUNC4(RADEON_CONFIG_MEMSIZE, mem_size);
}