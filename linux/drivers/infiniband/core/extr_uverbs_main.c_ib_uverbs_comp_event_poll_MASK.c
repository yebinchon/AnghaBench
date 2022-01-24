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
struct poll_table_struct {int dummy; } ;
struct ib_uverbs_completion_event_file {int /*<<< orphan*/  ev_queue; } ;
struct file {struct ib_uverbs_completion_event_file* private_data; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct file*,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC1(struct file *filp,
					      struct poll_table_struct *wait)
{
	struct ib_uverbs_completion_event_file *comp_ev_file =
		filp->private_data;

	return FUNC0(&comp_ev_file->ev_queue, filp, wait);
}