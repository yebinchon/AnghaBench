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
struct mddev {TYPE_1__* pers; scalar_t__ bitmap; int /*<<< orphan*/  flags; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ sync_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_HAS_JOURNAL ; 
 int /*<<< orphan*/  MD_HAS_PPL ; 
 int FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, char *page)
{
	int ret;

	if (FUNC1(MD_HAS_JOURNAL, &mddev->flags)) {
		ret = FUNC0(page, "journal\n");
	} else if (FUNC1(MD_HAS_PPL, &mddev->flags)) {
		ret = FUNC0(page, "ppl\n");
	} else if (mddev->bitmap) {
		ret = FUNC0(page, "bitmap\n");
	} else if (mddev->pers) {
		if (mddev->pers->sync_request)
			ret = FUNC0(page, "resync\n");
		else
			ret = FUNC0(page, "none\n");
	} else {
		ret = FUNC0(page, "unknown\n");
	}

	return ret;
}