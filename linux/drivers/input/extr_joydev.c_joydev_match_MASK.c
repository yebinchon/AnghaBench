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
struct input_handler {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct input_dev*) ; 
 scalar_t__ FUNC1 (struct input_dev*) ; 

__attribute__((used)) static bool FUNC2(struct input_handler *handler, struct input_dev *dev)
{
	/* Disable blacklisted devices */
	if (FUNC1(dev))
		return false;

	/* Avoid absolute mice */
	if (FUNC0(dev))
		return false;

	return true;
}