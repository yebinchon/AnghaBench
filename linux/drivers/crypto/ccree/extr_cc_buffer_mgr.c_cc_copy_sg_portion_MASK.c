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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef  enum cc_sg_cpy_direct { ____Placeholder_cc_sg_cpy_direct } cc_sg_cpy_direct ;

/* Variables and functions */
 int CC_SG_TO_BUF ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,scalar_t__,void*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct scatterlist*,scalar_t__) ; 

void FUNC2(struct device *dev, u8 *dest, struct scatterlist *sg,
			u32 to_skip, u32 end, enum cc_sg_cpy_direct direct)
{
	u32 nents;

	nents = FUNC1(sg, end);
	FUNC0(sg, nents, (void *)dest, (end - to_skip + 1), to_skip,
		       (direct == CC_SG_TO_BUF));
}