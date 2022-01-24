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
 size_t B ; 
 int /*<<< orphan*/  EGRET_TACK_ASSERTED_DELAY ; 
 int TACK ; 
 int TIP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ mcu_is_egret ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * via ; 

__attribute__((used)) static inline void FUNC3(void)
{
	if (mcu_is_egret) {
		FUNC2(EGRET_TACK_ASSERTED_DELAY);
		FUNC1(&via[B], FUNC0(&via[B]) & ~(TIP | TACK));
	} else
		FUNC1(&via[B], FUNC0(&via[B]) | TIP | TACK);
}