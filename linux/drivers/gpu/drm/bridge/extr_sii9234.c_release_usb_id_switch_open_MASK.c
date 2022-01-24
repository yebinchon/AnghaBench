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
struct sii9234 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MHL_TX_DISC_CTRL1_REG ; 
 int /*<<< orphan*/  MHL_TX_DISC_CTRL6_REG ; 
 int /*<<< orphan*/  T_SRC_CBUS_FLOAT ; 
 int USB_ID_OVR ; 
 int /*<<< orphan*/  FUNC0 (struct sii9234*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sii9234 *ctx)
{
	FUNC1(T_SRC_CBUS_FLOAT);
	/* Clear USB ID switch to open */
	FUNC0(ctx, MHL_TX_DISC_CTRL6_REG, 0, USB_ID_OVR);
	/* Enable CBUS discovery */
	FUNC0(ctx, MHL_TX_DISC_CTRL1_REG, ~0, 0x01);
}