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
struct edmacc_param {int dummy; } ;
struct edma_cc {unsigned int num_slots; scalar_t__ base; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PARM_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct edmacc_param*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct edma_cc *ecc, unsigned slot,
			   struct edmacc_param *param)
{
	slot = FUNC0(slot);
	if (slot >= ecc->num_slots)
		return -EINVAL;
	FUNC2(param, ecc->base + FUNC1(slot), PARM_SIZE);

	return 0;
}