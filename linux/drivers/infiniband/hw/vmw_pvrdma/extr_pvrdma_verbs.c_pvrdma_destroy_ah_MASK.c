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
typedef  int /*<<< orphan*/  u32 ;
struct pvrdma_dev {int /*<<< orphan*/  num_ahs; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pvrdma_dev* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ib_ah *ah, u32 flags)
{
	struct pvrdma_dev *dev = FUNC1(ah->device);

	FUNC0(&dev->num_ahs);
}