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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ caam_little_end ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(u32 * const desc, u64 data)
{
	u32 *offset = FUNC2(desc);

	/* Only 32-bit alignment is guaranteed in descriptor buffer */
	if (caam_little_end) {
		*offset = FUNC1(FUNC3(data));
		*(++offset) = FUNC1(FUNC4(data));
	} else {
		*offset = FUNC1(FUNC4(data));
		*(++offset) = FUNC1(FUNC3(data));
	}

	(*desc) = FUNC1(FUNC0(*desc) + 2);
}