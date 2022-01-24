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
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
union hdmi_infoframe {TYPE_2__ any; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct tda998x_priv {TYPE_1__* hdmi; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_WRITE_RANGE_BUF ; 
 int /*<<< orphan*/  REG_DIP_IF_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (union hdmi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct tda998x_priv *priv, u8 bit, u16 addr,
		 union hdmi_infoframe *frame)
{
	u8 buf[MAX_WRITE_RANGE_BUF];
	ssize_t len;

	len = FUNC1(frame, buf, sizeof(buf));
	if (len < 0) {
		FUNC0(&priv->hdmi->dev,
			"hdmi_infoframe_pack() type=0x%02x failed: %zd\n",
			frame->any.type, len);
		return;
	}

	FUNC2(priv, REG_DIP_IF_FLAGS, bit);
	FUNC4(priv, addr, buf, len);
	FUNC3(priv, REG_DIP_IF_FLAGS, bit);
}