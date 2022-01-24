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
struct media_bay_info {int user_lock; int /*<<< orphan*/  lock; } ;
struct macio_dev {int dummy; } ;

/* Variables and functions */
 struct media_bay_info* FUNC0 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct macio_dev *baydev)
{
	struct media_bay_info* bay;

	if (baydev == NULL)
		return;
	bay = FUNC0(baydev);
	if (bay == NULL)
		return;
	FUNC1(&bay->lock);
	bay->user_lock = 1;
}