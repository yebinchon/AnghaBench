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
struct sii9234 {int /*<<< orphan*/ * client; } ;

/* Variables and functions */
 size_t I2C_CBUS ; 
 size_t I2C_HDMI ; 
 size_t I2C_TPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sii9234 *ctx)
{
	FUNC0(ctx->client[I2C_CBUS]);
	FUNC0(ctx->client[I2C_HDMI]);
	FUNC0(ctx->client[I2C_TPI]);
}