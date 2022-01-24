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
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ base ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int irq ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int id)
{
	int match = base != 0;

	if (match) {
		if (irq <= -1)
			FUNC1(dev, "Using polling mode (specify irq)\n");
	} else
		FUNC0(dev, "Please specify I/O base\n");

	return match;
}