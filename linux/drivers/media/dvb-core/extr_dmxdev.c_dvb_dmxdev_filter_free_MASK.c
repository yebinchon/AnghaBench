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
struct TYPE_2__ {int /*<<< orphan*/  queue; int /*<<< orphan*/ * data; } ;
struct dmxdev_filter {int /*<<< orphan*/  mutex; TYPE_1__ buffer; int /*<<< orphan*/  vb2_ctx; } ;
struct dmxdev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMXDEV_STATE_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct dmxdev_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmxdev_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dmxdev_filter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dmxdev *dmxdev,
				  struct dmxdev_filter *dmxdevfilter)
{
	FUNC6(&dmxdev->mutex);
	FUNC6(&dmxdevfilter->mutex);
	if (FUNC3(&dmxdevfilter->vb2_ctx))
		FUNC5(&dmxdevfilter->vb2_ctx);
	FUNC4(&dmxdevfilter->vb2_ctx);


	FUNC2(dmxdevfilter);
	FUNC0(dmxdevfilter);

	if (dmxdevfilter->buffer.data) {
		void *mem = dmxdevfilter->buffer.data;

		FUNC8(&dmxdev->lock);
		dmxdevfilter->buffer.data = NULL;
		FUNC9(&dmxdev->lock);
		FUNC10(mem);
	}

	FUNC1(dmxdevfilter, DMXDEV_STATE_FREE);
	FUNC11(&dmxdevfilter->buffer.queue);
	FUNC7(&dmxdevfilter->mutex);
	FUNC7(&dmxdev->mutex);
	return 0;
}