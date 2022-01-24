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
struct nvm_tgt_type {int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvm_tgt_types ; 
 int /*<<< orphan*/  nvm_tgtt_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct nvm_tgt_type *tt)
{
	int ret = 0;

	FUNC1(&nvm_tgtt_lock);
	if (FUNC0(tt->name))
		ret = -EEXIST;
	else
		FUNC2(&tt->list, &nvm_tgt_types);
	FUNC3(&nvm_tgtt_lock);

	return ret;
}