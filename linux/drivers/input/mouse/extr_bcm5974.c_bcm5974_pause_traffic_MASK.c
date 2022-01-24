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
struct bcm5974 {int /*<<< orphan*/  bt_urb; int /*<<< orphan*/  tp_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm5974*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcm5974 *dev)
{
	FUNC1(dev->tp_urb);
	FUNC1(dev->bt_urb);
	FUNC0(dev, false);
}