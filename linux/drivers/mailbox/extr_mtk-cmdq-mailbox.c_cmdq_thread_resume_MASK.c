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
struct cmdq_thread {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDQ_THR_RESUME ; 
 scalar_t__ CMDQ_THR_SUSPEND_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct cmdq_thread *thread)
{
	FUNC0(CMDQ_THR_RESUME, thread->base + CMDQ_THR_SUSPEND_TASK);
}