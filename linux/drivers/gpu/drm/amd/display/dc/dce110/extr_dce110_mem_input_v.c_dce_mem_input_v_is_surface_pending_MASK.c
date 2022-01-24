#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mem_input {int /*<<< orphan*/  request_address; int /*<<< orphan*/  current_address; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRPH_SURFACE_UPDATE_PENDING ; 
 struct dce_mem_input* FUNC0 (struct mem_input*) ; 
 int /*<<< orphan*/  UNP_GRPH_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUNP_GRPH_UPDATE ; 

bool FUNC3(struct mem_input *mem_input)
{
	struct dce_mem_input *mem_input110 = FUNC0(mem_input);
	uint32_t value;

	value = FUNC1(mem_input110->base.ctx, mmUNP_GRPH_UPDATE);

	if (FUNC2(value, UNP_GRPH_UPDATE,
			GRPH_SURFACE_UPDATE_PENDING))
		return true;

	mem_input->current_address = mem_input->request_address;
	return false;
}