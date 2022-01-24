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
struct TYPE_2__ {int hpd_source; struct dc_context* ctx; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;
typedef  enum hpd_source_id { ____Placeholder_hpd_source_id } hpd_source_id ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_CONTROL ; 
 int /*<<< orphan*/  AUX_DPHY_RX_CONTROL0 ; 
 int /*<<< orphan*/  AUX_HPD_SEL ; 
 int /*<<< orphan*/  AUX_LS_READ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUX_RX_RECEIVE_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (struct dc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
	struct dce110_link_encoder *enc110)
{
	struct dc_context *ctx = enc110->base.ctx;
	enum hpd_source_id hpd_source = enc110->base.hpd_source;
	uint32_t addr = FUNC0(AUX_CONTROL);
	uint32_t value = FUNC1(ctx, addr);

	FUNC3(value, hpd_source, AUX_CONTROL, AUX_HPD_SEL);
	FUNC3(value, 0, AUX_CONTROL, AUX_LS_READ_EN);
	FUNC2(ctx, addr, value);

	addr = FUNC0(AUX_DPHY_RX_CONTROL0);
	value = FUNC1(ctx, addr);

	/* 1/4 window (the maximum allowed) */
	FUNC3(value, 1,
			AUX_DPHY_RX_CONTROL0, AUX_RX_RECEIVE_WINDOW);
	FUNC2(ctx, addr, value);

}