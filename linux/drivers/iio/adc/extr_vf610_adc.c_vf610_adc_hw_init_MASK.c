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
struct vf610_adc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vf610_adc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vf610_adc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vf610_adc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vf610_adc*) ; 

__attribute__((used)) static void FUNC4(struct vf610_adc *info)
{
	/* CFG: Feature set */
	FUNC1(info);
	FUNC3(info);

	/* adc calibration */
	FUNC0(info);

	/* CFG: power and speed set */
	FUNC2(info);
}