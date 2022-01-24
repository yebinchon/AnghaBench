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
typedef  int u32 ;
struct aspeed_gfx {int /*<<< orphan*/  scu; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CRT_CTRL1 ; 
 scalar_t__ CRT_CTRL2 ; 
 int CRT_CTRL_DAC_EN ; 
 int CRT_CTRL_EN ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct aspeed_gfx *priv)
{
	u32 ctrl1 = FUNC1(priv->base + CRT_CTRL1);
	u32 ctrl2 = FUNC1(priv->base + CRT_CTRL2);

	FUNC3(ctrl1 & ~CRT_CTRL_EN, priv->base + CRT_CTRL1);
	FUNC3(ctrl2 & ~CRT_CTRL_DAC_EN, priv->base + CRT_CTRL2);

	FUNC2(priv->scu, 0x2c, FUNC0(16), 0);
}