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
struct mddev {scalar_t__ sync_speed_min; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, char *page)
{
	return FUNC1(page, "%d (%s)\n", FUNC0(mddev),
		       mddev->sync_speed_min ? "local": "system");
}