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
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pp_hwmgr*,int,int) ; 
 int /*<<< orphan*/  mmSMC_IND_DATA_0 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr, uint32_t smc_start_address,
				const uint8_t *src, uint32_t byte_count, uint32_t limit)
{
	int result;
	uint32_t data = 0;
	uint32_t original_data;
	uint32_t addr = 0;
	uint32_t extra_shift;

	if ((3 & smc_start_address)
		|| ((smc_start_address + byte_count) >= limit)) {
		FUNC3("smc_start_address invalid \n");
		return -EINVAL;
	}

	addr = smc_start_address;

	while (byte_count >= 4) {
	/* Bytes are written into the SMC address space with the MSB first. */
		data = src[0] * 0x1000000 + src[1] * 0x10000 + src[2] * 0x100 + src[3];

		result = FUNC2(hwmgr, addr, limit);

		if (0 != result)
			return result;

		FUNC1(hwmgr->device, mmSMC_IND_DATA_0, data);

		src += 4;
		byte_count -= 4;
		addr += 4;
	}

	if (0 != byte_count) {

		data = 0;

		result = FUNC2(hwmgr, addr, limit);

		if (0 != result)
			return result;


		original_data = FUNC0(hwmgr->device, mmSMC_IND_DATA_0);

		extra_shift = 8 * (4 - byte_count);

		while (byte_count > 0) {
			/* Bytes are written into the SMC addres space with the MSB first. */
			data = (0x100 * data) + *src++;
			byte_count--;
		}

		data <<= extra_shift;

		data |= (original_data & ~((~0UL) << extra_shift));

		result = FUNC2(hwmgr, addr, limit);

		if (0 != result)
			return result;

		FUNC1(hwmgr->device, mmSMC_IND_DATA_0, data);
	}

	return 0;
}