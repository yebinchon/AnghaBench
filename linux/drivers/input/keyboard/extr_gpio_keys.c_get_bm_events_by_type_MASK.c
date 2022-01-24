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
struct input_dev {unsigned long const* keybit; unsigned long const* swbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EV_KEY ; 
 int EV_SW ; 

__attribute__((used)) static const unsigned long *FUNC1(struct input_dev *dev,
						  int type)
{
	FUNC0(type != EV_SW && type != EV_KEY);

	return (type == EV_KEY) ? dev->keybit : dev->swbit;
}