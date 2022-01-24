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
 int /*<<< orphan*/  MHL_TX_MHLTX_CTL1_REG ; 
 int /*<<< orphan*/  MHL_TX_MHLTX_CTL2_REG ; 
 int /*<<< orphan*/  MHL_TX_MHLTX_CTL4_REG ; 
 int /*<<< orphan*/  MHL_TX_MHLTX_CTL7_REG ; 
 int /*<<< orphan*/  FUNC0 (struct sii9234*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sii9234*) ; 

__attribute__((used)) static int FUNC2(struct sii9234 *ctx)
{
	FUNC0(ctx, MHL_TX_MHLTX_CTL1_REG, 0xD0);
	FUNC0(ctx, MHL_TX_MHLTX_CTL2_REG, 0xFC);
	FUNC0(ctx, MHL_TX_MHLTX_CTL4_REG, 0xEB);
	FUNC0(ctx, MHL_TX_MHLTX_CTL7_REG, 0x0C);

	return FUNC1(ctx);
}