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
struct ib_uverbs_file {int /*<<< orphan*/  ref; int /*<<< orphan*/  event_handler; struct ib_uverbs_async_event_file* async_file; TYPE_1__* device; } ;
struct ib_uverbs_async_event_file {int /*<<< orphan*/  ref; struct ib_uverbs_file* uverbs_file; int /*<<< orphan*/  list; int /*<<< orphan*/  ev_queue; } ;
struct ib_device {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lists_mutex; int /*<<< orphan*/  uverbs_events_file_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (struct ib_uverbs_async_event_file*) ; 
 struct file* FUNC4 (char*,int /*<<< orphan*/ *,struct ib_uverbs_async_event_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_uverbs_event_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_uverbs_release_async_event_file ; 
 int /*<<< orphan*/  ib_uverbs_release_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_uverbs_async_event_file* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_async_event_fops ; 

struct file *FUNC14(struct ib_uverbs_file *uverbs_file,
					      struct ib_device	*ib_dev)
{
	struct ib_uverbs_async_event_file *ev_file;
	struct file *filp;

	ev_file = FUNC10(sizeof(*ev_file), GFP_KERNEL);
	if (!ev_file)
		return FUNC0(-ENOMEM);

	FUNC6(&ev_file->ev_queue);
	ev_file->uverbs_file = uverbs_file;
	FUNC7(&ev_file->uverbs_file->ref);
	FUNC8(&ev_file->ref);
	filp = FUNC4("[infinibandevent]", &uverbs_async_event_fops,
				  ev_file, O_RDONLY);
	if (FUNC2(filp))
		goto err_put_refs;

	FUNC12(&uverbs_file->device->lists_mutex);
	FUNC11(&ev_file->list,
		      &uverbs_file->device->uverbs_events_file_list);
	FUNC13(&uverbs_file->device->lists_mutex);

	FUNC3(uverbs_file->async_file);
	uverbs_file->async_file = ev_file;
	FUNC7(&uverbs_file->async_file->ref);
	FUNC1(&uverbs_file->event_handler,
			      ib_dev,
			      ib_uverbs_event_handler);
	FUNC5(&uverbs_file->event_handler);
	/* At that point async file stuff was fully set */

	return filp;

err_put_refs:
	FUNC9(&ev_file->uverbs_file->ref, ib_uverbs_release_file);
	FUNC9(&ev_file->ref, ib_uverbs_release_async_event_file);
	return filp;
}