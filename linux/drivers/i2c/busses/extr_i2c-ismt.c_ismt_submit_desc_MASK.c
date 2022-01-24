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
typedef  int uint ;
struct ismt_priv {int head; scalar_t__ smba; } ;

/* Variables and functions */
 int ISMT_DESC_ENTRIES ; 
 int ISMT_MCTRL_FMHP ; 
 int ISMT_MCTRL_SS ; 
 scalar_t__ ISMT_MSTR_MCTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ismt_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ismt_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ismt_priv*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ismt_priv *priv)
{
	uint fmhp;
	uint val;

	FUNC0(priv);
	FUNC1(priv);
	FUNC2(priv);

	/* Set the FMHP (Firmware Master Head Pointer)*/
	fmhp = ((priv->head + 1) % ISMT_DESC_ENTRIES) << 16;
	val = FUNC3(priv->smba + ISMT_MSTR_MCTRL);
	FUNC4((val & ~ISMT_MCTRL_FMHP) | fmhp,
	       priv->smba + ISMT_MSTR_MCTRL);

	/* Set the start bit */
	val = FUNC3(priv->smba + ISMT_MSTR_MCTRL);
	FUNC4(val | ISMT_MCTRL_SS,
	       priv->smba + ISMT_MSTR_MCTRL);
}