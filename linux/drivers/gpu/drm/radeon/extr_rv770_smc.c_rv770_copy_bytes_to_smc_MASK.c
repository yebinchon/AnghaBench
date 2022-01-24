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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct radeon_device {int /*<<< orphan*/  smc_idx_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_SRAM_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct radeon_device *rdev,
			    u16 smc_start_address, const u8 *src,
			    u16 byte_count, u16 limit)
{
	unsigned long flags;
	u32 data, original_data, extra_shift;
	u16 addr;
	int ret = 0;

	if (smc_start_address & 3)
		return -EINVAL;
	if ((smc_start_address + byte_count) > limit)
		return -EINVAL;

	addr = smc_start_address;

	FUNC3(&rdev->smc_idx_lock, flags);
	while (byte_count >= 4) {
		/* SMC address space is BE */
		data = (src[0] << 24) | (src[1] << 16) | (src[2] << 8) | src[3];

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			goto done;

		FUNC1(SMC_SRAM_DATA, data);

		src += 4;
		byte_count -= 4;
		addr += 4;
	}

	/* RMW for final bytes */
	if (byte_count > 0) {
		data = 0;

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			goto done;

		original_data = FUNC0(SMC_SRAM_DATA);

		extra_shift = 8 * (4 - byte_count);

		while (byte_count > 0) {
			/* SMC address space is BE */
			data = (data << 8) + *src++;
			byte_count--;
		}

		data <<= extra_shift;

		data |= (original_data & ~((~0UL) << extra_shift));

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			goto done;

		FUNC1(SMC_SRAM_DATA, data);
	}

done:
	FUNC4(&rdev->smc_idx_lock, flags);

	return ret;
}