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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_context const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC2(const struct dc_context *ctx, uint32_t addr,
		uint8_t shift, uint32_t mask, uint32_t *field_value)
{
	uint32_t reg_val = FUNC0(ctx, addr);
	*field_value = FUNC1(reg_val, mask, shift);
	return reg_val;
}