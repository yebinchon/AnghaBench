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

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(int clkin_khz, int idf, int ndiv, int odf)
{
	int divisor = idf * odf;

	/* prevent from division by 0 */
	if (!divisor)
		return 0;

	return FUNC0(clkin_khz * ndiv, divisor);
}