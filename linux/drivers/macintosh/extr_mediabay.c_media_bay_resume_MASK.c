#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct media_bay_info {scalar_t__ content_id; scalar_t__ last_value; scalar_t__ state; int /*<<< orphan*/  lock; scalar_t__ sleeping; int /*<<< orphan*/  index; void* timer; void* value_count; TYPE_4__* ops; } ;
struct TYPE_10__ {scalar_t__ event; } ;
struct TYPE_6__ {TYPE_5__ power_state; } ;
struct TYPE_7__ {TYPE_1__ power; } ;
struct TYPE_8__ {TYPE_2__ dev; } ;
struct macio_dev {TYPE_3__ ofdev; } ;
struct TYPE_9__ {scalar_t__ (* content ) (struct media_bay_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MB_POLL_DELAY ; 
 int /*<<< orphan*/  MB_POWER_DELAY ; 
 int /*<<< orphan*/  MB_STABLE_DELAY ; 
 TYPE_5__ PMSG_ON ; 
 scalar_t__ PM_EVENT_ON ; 
 struct media_bay_info* FUNC0 (struct macio_dev*) ; 
 scalar_t__ mb_empty ; 
 scalar_t__ mb_up ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct media_bay_info*,int) ; 
 scalar_t__ FUNC8 (struct media_bay_info*) ; 

__attribute__((used)) static int FUNC9(struct macio_dev *mdev)
{
	struct media_bay_info	*bay = FUNC0(mdev);

	if (mdev->ofdev.dev.power.power_state.event != PM_EVENT_ON) {
		mdev->ofdev.dev.power.power_state = PMSG_ON;

	       	/* We re-enable the bay using it's previous content
	       	   only if it did not change. Note those bozo timings,
	       	   they seem to help the 3400 get it right.
	       	 */
	       	/* Force MB power to 0 */
		FUNC4(&bay->lock);
	       	FUNC7(bay, 0);
		FUNC3(MB_POWER_DELAY);
	       	if (bay->ops->content(bay) != bay->content_id) {
			FUNC6("mediabay%d: Content changed during sleep...\n", bay->index);
			FUNC5(&bay->lock);
	       		return 0;
		}
	       	FUNC7(bay, 1);
	       	bay->last_value = bay->content_id;
	       	bay->value_count = FUNC2(MB_STABLE_DELAY);
	       	bay->timer = FUNC2(MB_POWER_DELAY);
	       	do {
			FUNC3(MB_POLL_DELAY);
	       		FUNC1(bay->index);
	       	} while((bay->state != mb_empty) &&
	       		(bay->state != mb_up));
		bay->sleeping = 0;
		FUNC5(&bay->lock);
	}
	return 0;
}