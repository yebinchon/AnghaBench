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
struct input_handler {int /*<<< orphan*/  (* start ) (struct input_handle*) ;int /*<<< orphan*/  h_list; scalar_t__ filter; } ;
struct input_handle {int /*<<< orphan*/  h_node; int /*<<< orphan*/  d_node; struct input_dev* dev; struct input_handler* handler; } ;
struct input_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  h_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct input_handle*) ; 

int FUNC5(struct input_handle *handle)
{
	struct input_handler *handler = handle->handler;
	struct input_dev *dev = handle->dev;
	int error;

	/*
	 * We take dev->mutex here to prevent race with
	 * input_release_device().
	 */
	error = FUNC2(&dev->mutex);
	if (error)
		return error;

	/*
	 * Filters go to the head of the list, normal handlers
	 * to the tail.
	 */
	if (handler->filter)
		FUNC0(&handle->d_node, &dev->h_list);
	else
		FUNC1(&handle->d_node, &dev->h_list);

	FUNC3(&dev->mutex);

	/*
	 * Since we are supposed to be called from ->connect()
	 * which is mutually exclusive with ->disconnect()
	 * we can't be racing with input_unregister_handle()
	 * and so separate lock is not needed here.
	 */
	FUNC1(&handle->h_node, &handler->h_list);

	if (handler->start)
		handler->start(handle);

	return 0;
}