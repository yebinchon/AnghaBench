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
struct ocrdma_dev {int dummy; } ;
struct ocrdma_ah {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct ocrdma_ah* FUNC0 (struct ib_ah*) ; 
 struct ocrdma_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,struct ocrdma_ah*) ; 

void FUNC3(struct ib_ah *ibah, u32 flags)
{
	struct ocrdma_ah *ah = FUNC0(ibah);
	struct ocrdma_dev *dev = FUNC1(ibah->device);

	FUNC2(dev, ah);
}