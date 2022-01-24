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
 int BIT_COMMECNT_I2C_TO_EMSC_EN ; 
 int /*<<< orphan*/  BIT_EMSCINTR_SPI_DVLD ; 
 int BIT_GENCTL_CLR_EMSC_RFIFO ; 
 int BIT_GENCTL_CLR_EMSC_XFIFO ; 
 int BIT_GENCTL_EMSC_EN ; 
 int /*<<< orphan*/  REG_COMMECNT ; 
 int /*<<< orphan*/  REG_EMSCINTR ; 
 int /*<<< orphan*/  REG_EMSCINTRMASK ; 
 int /*<<< orphan*/  REG_GENCTL ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sii8620 *ctx)
{
	u8 reg;

	FUNC1(ctx, REG_GENCTL, BIT_GENCTL_EMSC_EN
					 | BIT_GENCTL_CLR_EMSC_RFIFO
					 | BIT_GENCTL_CLR_EMSC_XFIFO, ~0);
	FUNC1(ctx, REG_GENCTL, BIT_GENCTL_CLR_EMSC_RFIFO
					 | BIT_GENCTL_CLR_EMSC_XFIFO, 0);
	FUNC1(ctx, REG_COMMECNT, BIT_COMMECNT_I2C_TO_EMSC_EN, ~0);
	reg = FUNC0(ctx, REG_EMSCINTR);
	FUNC2(ctx, REG_EMSCINTR, reg);
	FUNC2(ctx, REG_EMSCINTRMASK, BIT_EMSCINTR_SPI_DVLD);
}