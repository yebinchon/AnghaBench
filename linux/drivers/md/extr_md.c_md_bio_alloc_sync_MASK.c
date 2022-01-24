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
struct mddev {int /*<<< orphan*/  sync_set; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bio *FUNC3(struct mddev *mddev)
{
	if (!mddev || !FUNC2(&mddev->sync_set))
		return FUNC0(GFP_NOIO, 1);

	return FUNC1(GFP_NOIO, 1, &mddev->sync_set);
}