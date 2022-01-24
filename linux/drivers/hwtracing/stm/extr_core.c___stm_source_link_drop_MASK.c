#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  master; } ;
struct stm_source_device {TYPE_3__ output; TYPE_2__* data; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  link; int /*<<< orphan*/  link_entry; } ;
struct stm_device {TYPE_1__* data; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  link_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* unlink ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* unlink ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct stm_device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct stm_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct stm_device*) ; 
 int /*<<< orphan*/  stm_source_srcu ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct stm_source_device *src,
				  struct stm_device *stm)
{
	struct stm_device *link;
	int ret = 0;

	FUNC1(&stm->link_mutex);

	/* for stm::link_list modification, we hold both mutex and spinlock */
	FUNC5(&stm->link_lock);
	FUNC5(&src->link_lock);
	link = FUNC7(src->link, &stm_source_srcu, 1);

	/*
	 * The linked device may have changed since we last looked, because
	 * we weren't holding the src::link_lock back then; if this is the
	 * case, tell the caller to retry.
	 */
	if (link != stm) {
		ret = -EAGAIN;
		goto unlock;
	}

	FUNC8(link, &src->output);
	FUNC0(&src->link_entry);
	FUNC2(&link->dev);
	FUNC3(&link->dev);
	/* matches stm_find_device() from stm_source_link_store() */
	FUNC9(link);
	FUNC4(src->link, NULL);

unlock:
	FUNC6(&src->link_lock);
	FUNC6(&stm->link_lock);

	/*
	 * Call the unlink callbacks for both source and stm, when we know
	 * that we have actually performed the unlinking.
	 */
	if (!ret) {
		if (src->data->unlink)
			src->data->unlink(src->data);

		if (stm->data->unlink)
			stm->data->unlink(stm->data, src->output.master,
					  src->output.channel);
	}

	return ret;
}