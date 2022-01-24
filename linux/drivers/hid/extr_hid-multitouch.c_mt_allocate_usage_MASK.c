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
struct mt_usages {int /*<<< orphan*/  list; int /*<<< orphan*/  confidence_state; void* inrange_state; void* tip_state; void* contactid; void* a; void* h; void* w; void* p; void* cy; void* cx; void* y; void* x; } ;
struct mt_application {int /*<<< orphan*/  mt_usages; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* DEFAULT_FALSE ; 
 int /*<<< orphan*/  DEFAULT_TRUE ; 
 void* DEFAULT_ZERO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mt_usages* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mt_usages *FUNC2(struct hid_device *hdev,
					   struct mt_application *application)
{
	struct mt_usages *usage;

	usage = FUNC0(&hdev->dev, sizeof(*usage), GFP_KERNEL);
	if (!usage)
		return NULL;

	/* set some defaults so we do not need to check for null pointers */
	usage->x = DEFAULT_ZERO;
	usage->y = DEFAULT_ZERO;
	usage->cx = DEFAULT_ZERO;
	usage->cy = DEFAULT_ZERO;
	usage->p = DEFAULT_ZERO;
	usage->w = DEFAULT_ZERO;
	usage->h = DEFAULT_ZERO;
	usage->a = DEFAULT_ZERO;
	usage->contactid = DEFAULT_ZERO;
	usage->tip_state = DEFAULT_FALSE;
	usage->inrange_state = DEFAULT_FALSE;
	usage->confidence_state = DEFAULT_TRUE;

	FUNC1(&usage->list, &application->mt_usages);

	return usage;
}