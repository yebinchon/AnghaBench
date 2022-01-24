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
struct lineevent_state {int /*<<< orphan*/  events; int /*<<< orphan*/  wait; } ;
struct file {struct lineevent_state* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC2(struct file *filep,
				   struct poll_table_struct *wait)
{
	struct lineevent_state *le = filep->private_data;
	__poll_t events = 0;

	FUNC1(filep, &le->wait, wait);

	if (!FUNC0(&le->events))
		events = EPOLLIN | EPOLLRDNORM;

	return events;
}