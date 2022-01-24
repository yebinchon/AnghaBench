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
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned *nom, unsigned *den,
				    unsigned nom_min, unsigned den_min)
{
	unsigned tmp;

	/* reduce the numbers to a simpler ratio */
	tmp = FUNC1(*nom, *den);
	*nom /= tmp;
	*den /= tmp;

	/* make sure nominator is large enough */
	if (*nom < nom_min) {
		tmp = FUNC0(nom_min, *nom);
		*nom *= tmp;
		*den *= tmp;
	}

	/* make sure the denominator is large enough */
	if (*den < den_min) {
		tmp = FUNC0(den_min, *den);
		*nom *= tmp;
		*den *= tmp;
	}
}