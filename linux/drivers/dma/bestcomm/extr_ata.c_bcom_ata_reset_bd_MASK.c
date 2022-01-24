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
struct bcom_task {int num_bd; int bd_size; int /*<<< orphan*/  tasknum; scalar_t__ outdex; scalar_t__ index; int /*<<< orphan*/  bd; } ;
struct bcom_ata_var {int /*<<< orphan*/  bd_base; int /*<<< orphan*/  bd_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct bcom_task *tsk)
{
	struct bcom_ata_var *var;

	/* Reset all BD */
	FUNC1(tsk->bd, 0x00, tsk->num_bd * tsk->bd_size);

	tsk->index = 0;
	tsk->outdex = 0;

	var = (struct bcom_ata_var *) FUNC0(tsk->tasknum);
	var->bd_start = var->bd_base;
}