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
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int BIT_MDT_XMIT_CTRL_EN ; 
 int BIT_MDT_XMIT_CTRL_FIXED_BURST_LEN ; 
 int /*<<< orphan*/  MHL_BURST_ID_HID_PAYLOAD ; 
 int /*<<< orphan*/  REG_MDT_XMIT_CTRL ; 
 int /*<<< orphan*/  REG_MDT_XMIT_WRITE_PORT ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sii8620 *ctx)
{
	u8 buf[16];

	FUNC2(ctx, REG_MDT_XMIT_CTRL, BIT_MDT_XMIT_CTRL_EN
		| BIT_MDT_XMIT_CTRL_FIXED_BURST_LEN);
	FUNC1((void *)buf,
		MHL_BURST_ID_HID_PAYLOAD);
	FUNC3(ctx, REG_MDT_XMIT_WRITE_PORT, buf, FUNC0(buf));
}