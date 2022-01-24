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
struct input_dev {int dummy; } ;
struct a3d {int /*<<< orphan*/  gameport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct a3d* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	struct a3d *a3d = FUNC1(dev);

	FUNC0(a3d->gameport);
	return 0;
}