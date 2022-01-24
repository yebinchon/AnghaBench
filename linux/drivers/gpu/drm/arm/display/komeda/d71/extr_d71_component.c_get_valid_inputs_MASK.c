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
typedef  int u32 ;
struct block_header {int /*<<< orphan*/ * input_ids; int /*<<< orphan*/  pipeline_info; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static u32 FUNC3(struct block_header *blk)
{
	u32 valid_inputs = 0, comp_id;
	int i;

	for (i = 0; i < FUNC1(blk->pipeline_info); i++) {
		FUNC2(blk->input_ids[i], NULL, &comp_id);
		if (comp_id == 0xFFFFFFFF)
			continue;
		valid_inputs |= FUNC0(comp_id);
	}

	return valid_inputs;
}