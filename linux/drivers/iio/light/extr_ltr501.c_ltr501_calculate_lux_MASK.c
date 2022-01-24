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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,scalar_t__) ; 
 unsigned long FUNC1 (int,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC2(u16 vis_data, u16 ir_data)
{
	unsigned long ratio, lux;

	if (vis_data == 0)
		return 0;

	/* multiply numerator by 100 to avoid handling ratio < 1 */
	ratio = FUNC0(ir_data * 100, ir_data + vis_data);

	if (ratio < 45)
		lux = FUNC1(1774, vis_data, -1105, ir_data);
	else if (ratio >= 45 && ratio < 64)
		lux = FUNC1(3772, vis_data, 1336, ir_data);
	else if (ratio >= 64 && ratio < 85)
		lux = FUNC1(1690, vis_data, 169, ir_data);
	else
		lux = 0;

	return lux / 1000;
}