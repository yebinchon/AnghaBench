#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {int crtc_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  output_flags; } ;
struct intel_sdvo {TYPE_2__ base; TYPE_1__ caps; scalar_t__ controlled_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 int SDVO_LVDS_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct intel_sdvo*) ; 
 int SDVO_OUTPUT_CVBS0 ; 
 int SDVO_OUTPUT_LVDS0 ; 
 int SDVO_OUTPUT_MASK ; 
 int SDVO_OUTPUT_RGB0 ; 
 int SDVO_OUTPUT_SVID0 ; 
 int SDVO_OUTPUT_TMDS0 ; 
 int SDVO_OUTPUT_YPRPB0 ; 
 int SDVO_RGB_MASK ; 
 int SDVO_TMDS_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC7(struct intel_sdvo *intel_sdvo, u16 flags)
{
	/* SDVO requires XXX1 function may not exist unless it has XXX0 function.*/

	if (flags & SDVO_OUTPUT_TMDS0)
		if (!FUNC3(intel_sdvo, 0))
			return false;

	if ((flags & SDVO_TMDS_MASK) == SDVO_TMDS_MASK)
		if (!FUNC3(intel_sdvo, 1))
			return false;

	/* TV has no XXX1 function block */
	if (flags & SDVO_OUTPUT_SVID0)
		if (!FUNC5(intel_sdvo, SDVO_OUTPUT_SVID0))
			return false;

	if (flags & SDVO_OUTPUT_CVBS0)
		if (!FUNC5(intel_sdvo, SDVO_OUTPUT_CVBS0))
			return false;

	if (flags & SDVO_OUTPUT_YPRPB0)
		if (!FUNC5(intel_sdvo, SDVO_OUTPUT_YPRPB0))
			return false;

	if (flags & SDVO_OUTPUT_RGB0)
		if (!FUNC2(intel_sdvo, 0))
			return false;

	if ((flags & SDVO_RGB_MASK) == SDVO_RGB_MASK)
		if (!FUNC2(intel_sdvo, 1))
			return false;

	if (flags & SDVO_OUTPUT_LVDS0)
		if (!FUNC4(intel_sdvo, 0))
			return false;

	if ((flags & SDVO_LVDS_MASK) == SDVO_LVDS_MASK)
		if (!FUNC4(intel_sdvo, 1))
			return false;

	if ((flags & SDVO_OUTPUT_MASK) == 0) {
		unsigned char bytes[2];

		intel_sdvo->controlled_output = 0;
		FUNC6(bytes, &intel_sdvo->caps.output_flags, 2);
		FUNC0("%s: Unknown SDVO output type (0x%02x%02x)\n",
			      FUNC1(intel_sdvo),
			      bytes[0], bytes[1]);
		return false;
	}
	intel_sdvo->base.crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);

	return true;
}