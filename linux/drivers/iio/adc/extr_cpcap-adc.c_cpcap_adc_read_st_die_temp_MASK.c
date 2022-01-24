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
struct cpcap_adc {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC1(struct cpcap_adc *ddata,
				      int addr, int *val)
{
	int error;

	error = FUNC0(ddata->reg, addr, val);
	if (error)
		return error;

	*val -= 282;
	*val *= 114;
	*val += 25000;

	return 0;
}