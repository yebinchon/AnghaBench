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
typedef  int /*<<< orphan*/  uint16_t ;
struct fixed31_32 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC3 (struct fixed31_32) ; 

__attribute__((used)) static const uint16_t *FUNC4(int taps, struct fixed31_32 ratio)
{
	if (taps == 4)
		return FUNC3(ratio);
	else if (taps == 3)
		return FUNC2(ratio);
	else if (taps == 2)
		return FUNC1();
	else if (taps == 1)
		return NULL;
	else {
		/* should never happen, bug */
		FUNC0();
		return NULL;
	}
}