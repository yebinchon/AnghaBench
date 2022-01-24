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
struct kfd_process {int dummy; } ;
struct kfd_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kfd_process*,struct kfd_event*) ; 
 scalar_t__ FUNC1 (struct kfd_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_event*) ; 

__attribute__((used)) static void FUNC3(struct kfd_process *p,
					struct kfd_event *ev)
{
	if (ev && FUNC1(ev)) {
		FUNC0(p, ev);
		FUNC2(ev);
	}
}