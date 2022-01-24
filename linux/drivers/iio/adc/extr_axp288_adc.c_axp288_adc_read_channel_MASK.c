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
struct regmap {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int IIO_VAL_INT ; 
 scalar_t__ FUNC0 (struct regmap*,unsigned long,int*,int) ; 

__attribute__((used)) static int FUNC1(int *val, unsigned long address,
				struct regmap *regmap)
{
	u8 buf[2];

	if (FUNC0(regmap, address, buf, 2))
		return -EIO;
	*val = (buf[0] << 4) + ((buf[1] >> 4) & 0x0F);

	return IIO_VAL_INT;
}