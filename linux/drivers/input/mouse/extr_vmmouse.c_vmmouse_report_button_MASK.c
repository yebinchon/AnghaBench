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
struct psmouse {int dummy; } ;
struct input_dev {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_dev*,unsigned int,int) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct psmouse *psmouse,
				  struct input_dev *abs_dev,
				  struct input_dev *rel_dev,
				  struct input_dev *pref_dev,
				  unsigned int code, int value)
{
	if (FUNC1(code, abs_dev->key))
		pref_dev = abs_dev;
	else if (FUNC1(code, rel_dev->key))
		pref_dev = rel_dev;

	FUNC0(pref_dev, code, value);
}