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
typedef  int u8 ;
struct sii8620 {scalar_t__ error; int devcap_read; int /*<<< orphan*/  devcap; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t MHL_DCAP_ADOPTER_ID_H ; 
 size_t MHL_DCAP_ADOPTER_ID_L ; 
 size_t MHL_DCAP_DEVICE_ID_H ; 
 size_t MHL_DCAP_DEVICE_ID_L ; 
 size_t MHL_DCAP_MHL_VERSION ; 
 int MHL_DCAP_SIZE ; 
 int /*<<< orphan*/  REG_EDID_FIFO_RD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC4(struct sii8620 *ctx)
{
	u8 dcap[MHL_DCAP_SIZE];
	struct device *dev = ctx->dev;

	FUNC2(ctx, REG_EDID_FIFO_RD_DATA, dcap, MHL_DCAP_SIZE);
	if (ctx->error < 0)
		return;

	FUNC0(dev, "detected dongle MHL %d.%d, ChipID %02x%02x:%02x%02x\n",
		 dcap[MHL_DCAP_MHL_VERSION] / 16,
		 dcap[MHL_DCAP_MHL_VERSION] % 16,
		 dcap[MHL_DCAP_ADOPTER_ID_H], dcap[MHL_DCAP_ADOPTER_ID_L],
		 dcap[MHL_DCAP_DEVICE_ID_H], dcap[MHL_DCAP_DEVICE_ID_L]);
	FUNC3(ctx->devcap, dcap, MHL_DCAP_SIZE);
	ctx->devcap_read = true;
	FUNC1(ctx);
}