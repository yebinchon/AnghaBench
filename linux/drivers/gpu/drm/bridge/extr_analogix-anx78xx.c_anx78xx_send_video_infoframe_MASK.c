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
typedef  int /*<<< orphan*/  u8 ;
struct hdmi_avi_infoframe {int /*<<< orphan*/  length; } ;
struct anx78xx {int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int HDMI_AVI_INFOFRAME_SIZE ; 
 int HDMI_INFOFRAME_HEADER_SIZE ; 
 size_t I2C_IDX_TX_P0 ; 
 size_t I2C_IDX_TX_P2 ; 
 int /*<<< orphan*/  SP_AVI_IF_EN ; 
 int /*<<< orphan*/  SP_AVI_IF_UD ; 
 int /*<<< orphan*/  SP_INFOFRAME_AVI_DB1_REG ; 
 int /*<<< orphan*/  SP_PACKET_SEND_CTRL_REG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct anx78xx *anx78xx,
					struct hdmi_avi_infoframe *frame)
{
	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
	int err;

	err = FUNC3(frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC0("Failed to pack AVI infoframe: %d\n", err);
		return err;
	}

	err = FUNC1(anx78xx->map[I2C_IDX_TX_P0],
				 SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
	if (err)
		return err;

	err = FUNC4(anx78xx->map[I2C_IDX_TX_P2],
				SP_INFOFRAME_AVI_DB1_REG, buffer,
				frame->length);
	if (err)
		return err;

	err = FUNC2(anx78xx->map[I2C_IDX_TX_P0],
			       SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_UD);
	if (err)
		return err;

	err = FUNC2(anx78xx->map[I2C_IDX_TX_P0],
			       SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
	if (err)
		return err;

	return 0;
}