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
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct input_dev *input_dev,
				int button_count)
{
	int i;

	for (i = 0; i < button_count; i++) {
		int key = FUNC1(i);

		if (key)
			FUNC0(key, input_dev->keybit);
	}
}