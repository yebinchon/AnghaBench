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
struct adf_etr_bank_data {int ring_mask; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct adf_etr_bank_data *bank, uint32_t ring)
{
	FUNC0(&bank->lock);
	if (bank->ring_mask & (1 << ring)) {
		FUNC1(&bank->lock);
		return -EFAULT;
	}
	bank->ring_mask |= (1 << ring);
	FUNC1(&bank->lock);
	return 0;
}