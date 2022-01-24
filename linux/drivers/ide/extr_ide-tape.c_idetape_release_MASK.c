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
struct ide_tape_obj {int dummy; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 struct ide_tape_obj* FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_tape_mutex ; 
 int /*<<< orphan*/  ide_tape_obj ; 
 int /*<<< orphan*/  FUNC1 (struct ide_tape_obj*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gendisk *disk, fmode_t mode)
{
	struct ide_tape_obj *tape = FUNC0(disk, ide_tape_obj);

	FUNC2(&ide_tape_mutex);
	FUNC1(tape);
	FUNC3(&ide_tape_mutex);
}