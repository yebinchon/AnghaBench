#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {struct cs_char* private_data; } ;
struct cs_char {int /*<<< orphan*/  lock; int /*<<< orphan*/  dataind_queue; int /*<<< orphan*/  chardev_queue; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 TYPE_1__ cs_char_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, poll_table *wait)
{
	struct cs_char *csdata = file->private_data;
	__poll_t ret = 0;

	FUNC1(file, &cs_char_data.wait, wait);
	FUNC2(&csdata->lock);
	if (!FUNC0(&csdata->chardev_queue))
		ret = EPOLLIN | EPOLLRDNORM;
	else if (!FUNC0(&csdata->dataind_queue))
		ret = EPOLLIN | EPOLLRDNORM;
	FUNC3(&csdata->lock);

	return ret;
}