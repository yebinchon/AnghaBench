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
typedef  int u32 ;
struct dw_i2c_dev {int flags; scalar_t__ base; } ;

/* Variables and functions */
 int ACCESS_16BIT ; 
 int ACCESS_SWAP ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 

u32 FUNC3(struct dw_i2c_dev *dev, int offset)
{
	u32 value;

	if (dev->flags & ACCESS_16BIT)
		value = FUNC1(dev->base + offset) |
			(FUNC1(dev->base + offset + 2) << 16);
	else
		value = FUNC0(dev->base + offset);

	if (dev->flags & ACCESS_SWAP)
		return FUNC2(value);
	else
		return value;
}