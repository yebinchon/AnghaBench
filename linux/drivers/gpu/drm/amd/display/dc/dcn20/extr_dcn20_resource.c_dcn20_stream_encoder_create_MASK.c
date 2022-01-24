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
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {struct stream_encoder base; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_internal_rev; } ;
struct dc_context {int /*<<< orphan*/  dc_bios; TYPE_1__ asic_id; } ;
typedef  enum engine_id { ____Placeholder_engine_id } engine_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENGINE_ID_DIGD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dcn10_stream_encoder*,struct dc_context*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dcn10_stream_encoder* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  se_mask ; 
 int /*<<< orphan*/  se_shift ; 
 int /*<<< orphan*/ * stream_enc_regs ; 

struct stream_encoder *FUNC3(
	enum engine_id eng_id,
	struct dc_context *ctx)
{
	struct dcn10_stream_encoder *enc1 =
		FUNC2(sizeof(struct dcn10_stream_encoder), GFP_KERNEL);

	if (!enc1)
		return NULL;

	if (FUNC0(ctx->asic_id.hw_internal_rev)) {
		if (eng_id >= ENGINE_ID_DIGD)
			eng_id++;
	}

	FUNC1(enc1, ctx, ctx->dc_bios, eng_id,
					&stream_enc_regs[eng_id],
					&se_shift, &se_mask);

	return &enc1->base;
}