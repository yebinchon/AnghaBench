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
struct pxrc {int is_open; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  urb; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct pxrc* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input)
{
	struct pxrc *pxrc = FUNC0(input);

	FUNC1(&pxrc->pm_mutex);
	FUNC3(pxrc->urb);
	pxrc->is_open = false;
	FUNC2(&pxrc->pm_mutex);
}