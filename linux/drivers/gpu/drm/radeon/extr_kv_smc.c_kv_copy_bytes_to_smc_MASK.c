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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_IND_DATA_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*,int,int) ; 

int FUNC3(struct radeon_device *rdev,
			 u32 smc_start_address,
			 const u8 *src, u32 byte_count, u32 limit)
{
	int ret;
	u32 data, original_data, addr, extra_shift, t_byte, count, mask;

	if ((smc_start_address + byte_count) > limit)
		return -EINVAL;

	addr = smc_start_address;
	t_byte = addr & 3;

	/* RMW for the initial bytes */
	if  (t_byte != 0) {
		addr -= t_byte;

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			return ret;

		original_data = FUNC0(SMC_IND_DATA_0);

		data = 0;
		mask = 0;
		count = 4;
		while (count > 0) {
			if (t_byte > 0) {
				mask = (mask << 8) | 0xff;
				t_byte--;
			} else if (byte_count > 0) {
				data = (data << 8) + *src++;
				byte_count--;
				mask <<= 8;
			} else {
				data <<= 8;
				mask = (mask << 8) | 0xff;
			}
			count--;
		}

		data |= original_data & mask;

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			return ret;

		FUNC1(SMC_IND_DATA_0, data);

		addr += 4;
	}

	while (byte_count >= 4) {
		/* SMC address space is BE */
		data = (src[0] << 24) + (src[1] << 16) + (src[2] << 8) + src[3];

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			return ret;

		FUNC1(SMC_IND_DATA_0, data);

		src += 4;
		byte_count -= 4;
		addr += 4;
	}

	/* RMW for the final bytes */
	if (byte_count > 0) {
		data = 0;

		ret = FUNC2(rdev, addr, limit);
		if (ret)
			return ret;

		original_data= FUNC0(SMC_IND_DATA_0);

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
			return ret;

		FUNC1(SMC_IND_DATA_0, data);
	}
	return 0;
}