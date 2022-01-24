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
struct max3191x_chip {scalar_t__ mode; int /*<<< orphan*/  undervolt1; int /*<<< orphan*/  ignore_uv; int /*<<< orphan*/  overtemp; int /*<<< orphan*/  crc_error; int /*<<< orphan*/  fault; } ;

/* Variables and functions */
 scalar_t__ STATUS_BYTE_DISABLED ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct max3191x_chip *max3191x,
				      unsigned int chipnum)
{
	/* without status byte the only diagnostic is the fault pin */
	if (!max3191x->ignore_uv && FUNC0(chipnum, max3191x->fault))
		return true;

	if (max3191x->mode == STATUS_BYTE_DISABLED)
		return false;

	return FUNC0(chipnum, max3191x->crc_error) ||
	       FUNC0(chipnum, max3191x->overtemp)  ||
	       (!max3191x->ignore_uv &&
		FUNC0(chipnum, max3191x->undervolt1));
}