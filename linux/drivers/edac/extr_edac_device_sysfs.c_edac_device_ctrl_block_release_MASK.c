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
struct kobject {int dummy; } ;
struct edac_device_block {TYPE_2__* instance; } ;
struct TYPE_4__ {TYPE_1__* ctl; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct edac_device_block* FUNC2 (struct kobject*) ; 

__attribute__((used)) static void FUNC3(struct kobject *kobj)
{
	struct edac_device_block *block;

	FUNC0(1, "\n");

	/* get the container of the kobj */
	block = FUNC2(kobj);

	/* map from 'block kobj' to 'block->instance->controller->main_kobj'
	 * now 'release' the block kobject
	 */
	FUNC1(&block->instance->ctl->kobj);
}