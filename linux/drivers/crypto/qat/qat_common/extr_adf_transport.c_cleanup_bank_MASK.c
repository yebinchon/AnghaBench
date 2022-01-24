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
typedef  size_t uint32_t ;
struct adf_hw_device_data {int tx_rings_mask; } ;
struct adf_etr_ring_data {int /*<<< orphan*/  inflights; } ;
struct adf_etr_bank_data {int ring_mask; struct adf_etr_ring_data* rings; struct adf_accel_dev* accel_dev; } ;
struct adf_accel_dev {struct adf_hw_device_data* hw_device; } ;

/* Variables and functions */
 size_t ADF_ETR_MAX_RINGS_PER_BANK ; 
 int /*<<< orphan*/  FUNC0 (struct adf_etr_bank_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct adf_etr_ring_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adf_etr_bank_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct adf_etr_bank_data *bank)
{
	uint32_t i;

	for (i = 0; i < ADF_ETR_MAX_RINGS_PER_BANK; i++) {
		struct adf_accel_dev *accel_dev = bank->accel_dev;
		struct adf_hw_device_data *hw_data = accel_dev->hw_device;
		struct adf_etr_ring_data *ring = &bank->rings[i];

		if (bank->ring_mask & (1 << i))
			FUNC1(ring);

		if (hw_data->tx_rings_mask & (1 << i))
			FUNC2(ring->inflights);
	}
	FUNC0(bank);
	FUNC3(bank, 0, sizeof(*bank));
}