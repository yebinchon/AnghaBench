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
struct timer_list {int dummy; } ;
struct delay_c {int /*<<< orphan*/  flush_expired_bios; int /*<<< orphan*/  kdelayd_wq; } ;

/* Variables and functions */
 struct delay_c* dc ; 
 int /*<<< orphan*/  delay_timer ; 
 struct delay_c* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct delay_c *dc = FUNC0(dc, t, delay_timer);

	FUNC1(dc->kdelayd_wq, &dc->flush_expired_bios);
}