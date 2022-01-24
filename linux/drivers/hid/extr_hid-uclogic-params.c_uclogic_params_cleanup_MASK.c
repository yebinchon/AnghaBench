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
struct uclogic_params {int /*<<< orphan*/  frame; int /*<<< orphan*/  pen; int /*<<< orphan*/  pen_unused; int /*<<< orphan*/  desc_ptr; int /*<<< orphan*/  invalid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uclogic_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct uclogic_params *params)
{
	if (!params->invalid) {
		FUNC0(params->desc_ptr);
		if (!params->pen_unused)
			FUNC3(&params->pen);
		FUNC2(&params->frame);
		FUNC1(params, 0, sizeof(*params));
	}
}