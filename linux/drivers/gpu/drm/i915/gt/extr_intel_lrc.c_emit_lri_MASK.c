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
typedef  int /*<<< orphan*/  u32 ;
struct lri {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC3(u32 *batch, const struct lri *lri, unsigned int count)
{
	FUNC0(!count || count > 63);

	*batch++ = FUNC1(count);
	do {
		*batch++ = FUNC2(lri->reg);
		*batch++ = lri->value;
	} while (lri++, --count);
	*batch++ = MI_NOOP;

	return batch;
}