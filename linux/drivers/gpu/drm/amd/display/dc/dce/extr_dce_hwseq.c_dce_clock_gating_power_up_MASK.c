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
struct dce_hwseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dce_hwseq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_hwseq*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct dce_hwseq *hws,
		bool enable)
{
	if (enable) {
		FUNC3();
		FUNC2();
	} else {
		FUNC0(hws);
		FUNC1(hws);
	}
}