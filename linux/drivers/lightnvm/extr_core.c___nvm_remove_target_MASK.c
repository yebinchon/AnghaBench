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
struct request_queue {int dummy; } ;
struct nvm_tgt_type {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* sysfs_exit ) (struct gendisk*) ;} ;
struct nvm_target {int /*<<< orphan*/  list; struct nvm_tgt_type* type; int /*<<< orphan*/  dev; struct gendisk* disk; } ;
struct gendisk {int /*<<< orphan*/  private_data; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvm_target*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC7 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct nvm_target *t, bool graceful)
{
	struct nvm_tgt_type *tt = t->type;
	struct gendisk *tdisk = t->disk;
	struct request_queue *q = tdisk->queue;

	FUNC1(tdisk);
	FUNC0(q);

	if (tt->sysfs_exit)
		tt->sysfs_exit(tdisk);

	if (tt->exit)
		tt->exit(tdisk->private_data, graceful);

	FUNC5(t->dev, 1);
	FUNC6(tdisk);
	FUNC4(t->type->owner);

	FUNC3(&t->list);
	FUNC2(t);
}