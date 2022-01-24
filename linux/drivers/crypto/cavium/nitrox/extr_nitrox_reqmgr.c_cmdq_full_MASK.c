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
struct nitrox_cmdq {int /*<<< orphan*/  pending_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline bool FUNC3(struct nitrox_cmdq *cmdq, int qlen)
{
	if (FUNC1(&cmdq->pending_count) > qlen) {
		FUNC0(&cmdq->pending_count);
		/* sync with other cpus */
		FUNC2();
		return true;
	}
	/* sync with other cpus */
	FUNC2();
	return false;
}