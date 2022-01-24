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
typedef  scalar_t__ uint32_t ;
struct link_encoder {int dummy; } ;
struct TYPE_2__ {struct dc_context* ctx; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_HPD_CONTROL ; 
 int /*<<< orphan*/  DC_HPD_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_link_encoder* FUNC1 (struct link_encoder*) ; 
 scalar_t__ FUNC2 (struct dc_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct link_encoder *enc)
{
	struct dce110_link_encoder *enc110 = FUNC1(enc);
	struct dc_context *ctx = enc110->base.ctx;
	uint32_t addr = FUNC0(DC_HPD_CONTROL);
	uint32_t hpd_enable = 0;
	uint32_t value = FUNC2(ctx, addr);

	FUNC3(hpd_enable, DC_HPD_CONTROL, DC_HPD_EN);

	if (hpd_enable == 0)
		FUNC4(value, 1, DC_HPD_CONTROL, DC_HPD_EN);
}