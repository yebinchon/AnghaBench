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
struct mlx5_eqe {int dummy; } ;
struct devx_event_subscription {int /*<<< orphan*/  cookie; int /*<<< orphan*/  event_list; struct devx_async_event_file* ev_file; } ;
struct devx_async_event_file {int is_overflow_err; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  event_list; scalar_t__ omit_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  out_data; int /*<<< orphan*/  cookie; } ;
struct devx_async_event_data {int /*<<< orphan*/  list; TYPE_1__ hdr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct devx_async_event_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct devx_event_subscription *event_sub,
			 const void *data)
{
	struct devx_async_event_file *ev_file;
	struct devx_async_event_data *event_data;
	unsigned long flags;

	ev_file = event_sub->ev_file;

	if (ev_file->omit_data) {
		FUNC4(&ev_file->lock, flags);
		if (!FUNC2(&event_sub->event_list)) {
			FUNC5(&ev_file->lock, flags);
			return 0;
		}

		FUNC1(&event_sub->event_list, &ev_file->event_list);
		FUNC5(&ev_file->lock, flags);
		FUNC6(&ev_file->poll_wait);
		return 0;
	}

	event_data = FUNC0(sizeof(*event_data) + sizeof(struct mlx5_eqe),
			     GFP_ATOMIC);
	if (!event_data) {
		FUNC4(&ev_file->lock, flags);
		ev_file->is_overflow_err = 1;
		FUNC5(&ev_file->lock, flags);
		return -ENOMEM;
	}

	event_data->hdr.cookie = event_sub->cookie;
	FUNC3(event_data->hdr.out_data, data, sizeof(struct mlx5_eqe));

	FUNC4(&ev_file->lock, flags);
	FUNC1(&event_data->list, &ev_file->event_list);
	FUNC5(&ev_file->lock, flags);
	FUNC6(&ev_file->poll_wait);

	return 0;
}