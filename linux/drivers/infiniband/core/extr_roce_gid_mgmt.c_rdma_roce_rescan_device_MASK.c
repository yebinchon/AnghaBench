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
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  enum_all_gids_of_dev_cb ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pass_all_filter ; 

void FUNC1(struct ib_device *ib_dev)
{
	FUNC0(ib_dev, pass_all_filter, NULL,
			    enum_all_gids_of_dev_cb, NULL);
}