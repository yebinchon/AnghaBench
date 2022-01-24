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
struct intel_context {int /*<<< orphan*/  lrc_desc; int /*<<< orphan*/  state; } ;
struct i915_perf_stream {int specific_ctx_id; unsigned int specific_ctx_id_mask; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  GEN11_ENGINE_CLASS_SHIFT ; 
 int GEN11_ENGINE_CLASS_WIDTH ; 
 int /*<<< orphan*/  GEN11_ENGINE_INSTANCE_SHIFT ; 
 unsigned int GEN11_ENGINE_INSTANCE_WIDTH ; 
 int /*<<< orphan*/  GEN11_SW_CTX_ID_SHIFT ; 
 unsigned int GEN11_SW_CTX_ID_WIDTH ; 
 unsigned int GEN8_CTX_ID_WIDTH ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_context* FUNC8 (struct i915_perf_stream*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i915_perf_stream *stream)
{
	struct drm_i915_private *i915 = stream->dev_priv;
	struct intel_context *ce;

	ce = FUNC8(stream);
	if (FUNC2(ce))
		return FUNC4(ce);

	switch (FUNC1(i915)) {
	case 7: {
		/*
		 * On Haswell we don't do any post processing of the reports
		 * and don't need to use the mask.
		 */
		stream->specific_ctx_id = FUNC6(ce->state);
		stream->specific_ctx_id_mask = 0;
		break;
	}

	case 8:
	case 9:
	case 10:
		if (FUNC5(i915)) {
			/*
			 * When using GuC, the context descriptor we write in
			 * i915 is read by GuC and rewritten before it's
			 * actually written into the hardware. The LRCA is
			 * what is put into the context id field of the
			 * context descriptor by GuC. Because it's aligned to
			 * a page, the lower 12bits are always at 0 and
			 * dropped by GuC. They won't be part of the context
			 * ID in the OA reports, so squash those lower bits.
			 */
			stream->specific_ctx_id =
				FUNC7(ce->lrc_desc) >> 12;

			/*
			 * GuC uses the top bit to signal proxy submission, so
			 * ignore that bit.
			 */
			stream->specific_ctx_id_mask =
				(1U << (GEN8_CTX_ID_WIDTH - 1)) - 1;
		} else {
			stream->specific_ctx_id_mask =
				(1U << GEN8_CTX_ID_WIDTH) - 1;
			stream->specific_ctx_id =
				FUNC9(ce->lrc_desc);
			stream->specific_ctx_id &=
				stream->specific_ctx_id_mask;
		}
		break;

	case 11: {
		stream->specific_ctx_id_mask =
			((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32) |
			((1U << GEN11_ENGINE_INSTANCE_WIDTH) - 1) << (GEN11_ENGINE_INSTANCE_SHIFT - 32) |
			((1 << GEN11_ENGINE_CLASS_WIDTH) - 1) << (GEN11_ENGINE_CLASS_SHIFT - 32);
		stream->specific_ctx_id = FUNC9(ce->lrc_desc);
		stream->specific_ctx_id &=
			stream->specific_ctx_id_mask;
		break;
	}

	default:
		FUNC3(FUNC1(i915));
	}

	FUNC0("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
			 stream->specific_ctx_id,
			 stream->specific_ctx_id_mask);

	return 0;
}