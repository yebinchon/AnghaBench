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
struct nitrox_device {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  devlist_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_devices ; 

__attribute__((used)) static void FUNC3(struct nitrox_device *ndev)
{
	FUNC1(&devlist_lock);
	FUNC0(&ndev->list);
	num_devices--;
	FUNC2(&devlist_lock);
}