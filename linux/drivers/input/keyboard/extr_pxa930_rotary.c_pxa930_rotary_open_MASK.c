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
struct pxa930_rotary {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pxa930_rotary*) ; 
 struct pxa930_rotary* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	struct pxa930_rotary *r = FUNC1(dev);

	FUNC0(r);

	return 0;
}