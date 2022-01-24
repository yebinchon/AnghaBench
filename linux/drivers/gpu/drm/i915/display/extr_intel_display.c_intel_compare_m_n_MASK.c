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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DATA_LINK_M_N_MASK ; 
 scalar_t__ INT_MAX ; 
 int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static bool
FUNC2(unsigned int m, unsigned int n,
		  unsigned int m2, unsigned int n2,
		  bool exact)
{
	if (m == m2 && n == n2)
		return true;

	if (exact || !m || !n || !m2 || !n2)
		return false;

	FUNC0(DATA_LINK_M_N_MASK > INT_MAX);

	if (n > n2) {
		while (n > n2) {
			m2 <<= 1;
			n2 <<= 1;
		}
	} else if (n < n2) {
		while (n < n2) {
			m <<= 1;
			n <<= 1;
		}
	}

	if (n != n2)
		return false;

	return FUNC1(m, m2);
}