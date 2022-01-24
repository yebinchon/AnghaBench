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
struct tda998x_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CEC_ENAMODS ; 
 int FUNC0 (struct tda998x_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tda998x_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tda998x_priv *priv, u8 mods, bool enable)
{
	int val = FUNC0(priv, REG_CEC_ENAMODS);

	if (val < 0)
		return;

	if (enable)
		val |= mods;
	else
		val &= ~mods;

	FUNC1(priv, REG_CEC_ENAMODS, val);
}