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
struct TYPE_4__ {int type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef  int /*<<< orphan*/  u8 ;
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_digital_port {int /*<<< orphan*/  (* read_infoframe ) (struct intel_encoder*,struct intel_crtc_state const*,int,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_3__ {int enable; } ;
struct intel_crtc_state {TYPE_1__ infoframes; } ;
typedef  enum hdmi_infoframe_type { ____Placeholder_hdmi_infoframe_type } hdmi_infoframe_type ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int VIDEO_DIP_DATA_SIZE ; 
 struct intel_digital_port* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (union hdmi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,struct intel_crtc_state const*,int,int /*<<< orphan*/ *,int) ; 

void FUNC6(struct intel_encoder *encoder,
			  const struct intel_crtc_state *crtc_state,
			  enum hdmi_infoframe_type type,
			  union hdmi_infoframe *frame)
{
	struct intel_digital_port *intel_dig_port = FUNC1(&encoder->base);
	u8 buffer[VIDEO_DIP_DATA_SIZE];
	int ret;

	if ((crtc_state->infoframes.enable &
	     FUNC3(type)) == 0)
		return;

	intel_dig_port->read_infoframe(encoder, crtc_state,
				       type, buffer, sizeof(buffer));

	/* Fill the 'hole' (see big comment above) at position 3 */
	FUNC4(&buffer[1], &buffer[0], 3);

	/* see comment above for the reason for this offset */
	ret = FUNC2(frame, buffer + 1, sizeof(buffer) - 1);
	if (ret) {
		FUNC0("Failed to unpack infoframe type 0x%02x\n", type);
		return;
	}

	if (frame->any.type != type)
		FUNC0("Found the wrong infoframe type 0x%x (expected 0x%02x)\n",
			      frame->any.type, type);
}