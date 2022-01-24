#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  master; } ;
struct stm_file {TYPE_2__ output; struct stm_device* stm; } ;
struct stm_device {TYPE_1__* data; } ;
struct inode {int dummy; } ;
struct file {struct stm_file* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* unlink ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct stm_file *stmf = file->private_data;
	struct stm_device *stm = stmf->stm;

	if (stm->data->unlink)
		stm->data->unlink(stm->data, stmf->output.master,
				  stmf->output.channel);

	FUNC1(stm, &stmf->output);

	/*
	 * matches the stm_char_open()'s
	 * class_find_device() + try_module_get()
	 */
	FUNC2(stm);
	FUNC0(stmf);

	return 0;
}