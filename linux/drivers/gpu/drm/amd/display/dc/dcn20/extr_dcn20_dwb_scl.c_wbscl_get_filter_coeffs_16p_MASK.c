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
 int /*<<< orphan*/  const* FUNC4 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC5 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC6 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC7 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC8 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC9 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC10 (struct fixed31_32) ; 
 int /*<<< orphan*/  const* FUNC11 (struct fixed31_32) ; 

__attribute__((used)) static const uint16_t *FUNC12(int taps, struct fixed31_32 ratio)
{
	if (taps == 12)
		return FUNC4(ratio);
	else if (taps == 11)
		return FUNC3(ratio);
	else if (taps == 10)
		return FUNC2(ratio);
	else if (taps == 9)
		return FUNC11(ratio);
	else if (taps == 8)
		return FUNC10(ratio);
	else if (taps == 7)
		return FUNC9(ratio);
	else if (taps == 6)
		return FUNC8(ratio);
	else if (taps == 5)
		return FUNC7(ratio);
	else if (taps == 4)
		return FUNC6(ratio);
	else if (taps == 3)
		return FUNC5(ratio);
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