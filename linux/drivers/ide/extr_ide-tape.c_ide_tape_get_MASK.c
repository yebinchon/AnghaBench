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
struct ide_tape_obj {int /*<<< orphan*/  dev; int /*<<< orphan*/  drive; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ide_tape_obj* FUNC2 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_tape_obj ; 
 struct ide_tape_obj** idetape_devs ; 
 int /*<<< orphan*/  idetape_ref_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ide_tape_obj *FUNC5(struct gendisk *disk, bool cdev,
					 unsigned int i)
{
	struct ide_tape_obj *tape = NULL;

	FUNC3(&idetape_ref_mutex);

	if (cdev)
		tape = idetape_devs[i];
	else
		tape = FUNC2(disk, ide_tape_obj);

	if (tape) {
		if (FUNC1(tape->drive))
			tape = NULL;
		else
			FUNC0(&tape->dev);
	}

	FUNC4(&idetape_ref_mutex);
	return tape;
}