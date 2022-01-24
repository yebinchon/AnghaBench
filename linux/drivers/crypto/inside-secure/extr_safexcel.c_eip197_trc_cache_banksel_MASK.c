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
struct safexcel_crypto_priv {scalar_t__ base; } ;

/* Variables and functions */
 int EIP197_CS_BANKSEL_MASK ; 
 int EIP197_CS_BANKSEL_OFS ; 
 scalar_t__ EIP197_CS_RAM_CTRL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct safexcel_crypto_priv *priv,
				     u32 addrmid, int *actbank)
{
	u32 val;
	int curbank;

	curbank = addrmid >> 16;
	if (curbank != *actbank) {
		val = FUNC0(priv->base + EIP197_CS_RAM_CTRL);
		val = (val & ~EIP197_CS_BANKSEL_MASK) |
		      (curbank << EIP197_CS_BANKSEL_OFS);
		FUNC1(val, priv->base + EIP197_CS_RAM_CTRL);
		*actbank = curbank;
	}
}