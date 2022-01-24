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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int DM_BUFIO_WORK_TIMER_SECS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dm_bufio_cleanup_old_work ; 
 int /*<<< orphan*/  dm_bufio_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct work_struct *w)
{
	FUNC0();

	FUNC1(dm_bufio_wq, &dm_bufio_cleanup_old_work,
			   DM_BUFIO_WORK_TIMER_SECS * HZ);
}