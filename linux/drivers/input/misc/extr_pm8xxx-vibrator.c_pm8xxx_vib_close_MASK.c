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
struct pm8xxx_vib {scalar_t__ active; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pm8xxx_vib* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8xxx_vib*,int) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct pm8xxx_vib *vib = FUNC1(dev);

	FUNC0(&vib->work);
	if (vib->active)
		FUNC2(vib, false);
}