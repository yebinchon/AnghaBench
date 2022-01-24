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
struct TYPE_2__ {int type; } ;
union hdmi_infoframe {TYPE_1__ any; } ;
typedef  int uint8_t ;
typedef  int u32 ;
struct vc4_dev {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int VC4_HDMI_PACKET_STRIDE ; 
 int FUNC4 (int) ; 
 int VC4_HDMI_RAM_PACKET_CONFIG ; 
 int VC4_HDMI_RAM_PACKET_ENABLE ; 
 int VC4_HDMI_RAM_PACKET_STATUS ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (union hdmi_infoframe*,int*,int) ; 
 struct vc4_dev* FUNC7 (struct drm_device*) ; 
 int FUNC8 (struct drm_encoder*,int) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder,
				     union hdmi_infoframe *frame)
{
	struct drm_device *dev = encoder->dev;
	struct vc4_dev *vc4 = FUNC7(dev);
	u32 packet_id = frame->any.type - 0x80;
	u32 packet_reg = FUNC4(packet_id);
	uint8_t buffer[VC4_HDMI_PACKET_STRIDE];
	ssize_t len, i;
	int ret;

	FUNC5(!(FUNC2(VC4_HDMI_RAM_PACKET_CONFIG) &
		    VC4_HDMI_RAM_PACKET_ENABLE),
		  "Packet RAM has to be on to store the packet.");

	len = FUNC6(frame, buffer, sizeof(buffer));
	if (len < 0)
		return;

	ret = FUNC8(encoder, frame->any.type);
	if (ret) {
		FUNC1("Failed to wait for infoframe to go idle: %d\n", ret);
		return;
	}

	for (i = 0; i < len; i += 7) {
		FUNC3(packet_reg,
			   buffer[i + 0] << 0 |
			   buffer[i + 1] << 8 |
			   buffer[i + 2] << 16);
		packet_reg += 4;

		FUNC3(packet_reg,
			   buffer[i + 3] << 0 |
			   buffer[i + 4] << 8 |
			   buffer[i + 5] << 16 |
			   buffer[i + 6] << 24);
		packet_reg += 4;
	}

	FUNC3(VC4_HDMI_RAM_PACKET_CONFIG,
		   FUNC2(VC4_HDMI_RAM_PACKET_CONFIG) | FUNC0(packet_id));
	ret = FUNC9((FUNC2(VC4_HDMI_RAM_PACKET_STATUS) &
			FUNC0(packet_id)), 100);
	if (ret)
		FUNC1("Failed to wait for infoframe to start: %d\n", ret);
}