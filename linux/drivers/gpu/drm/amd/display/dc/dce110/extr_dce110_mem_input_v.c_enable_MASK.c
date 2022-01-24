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
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRPH_ENABLE ; 
 int /*<<< orphan*/  UNP_GRPH_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUNP_GRPH_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dce_mem_input *mem_input110)
{
	uint32_t value = 0;

	value = FUNC0(mem_input110->base.ctx, mmUNP_GRPH_ENABLE);
	FUNC2(value, 1, UNP_GRPH_ENABLE, GRPH_ENABLE);
	FUNC1(mem_input110->base.ctx,
		mmUNP_GRPH_ENABLE,
		value);
}