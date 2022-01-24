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
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  I5100_SPDCMD ; 
 int /*<<< orphan*/  I5100_SPDDATA ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(const struct mem_ctl_info *mci,
			       u8 ch, u8 slot, u8 addr, u8 *byte)
{
	struct i5100_priv *priv = mci->pvt_info;
	u16 w;
	unsigned long et;

	FUNC5(priv->mc, I5100_SPDDATA, &w);
	if (FUNC1(w))
		return -1;

	FUNC6(priv->mc, I5100_SPDCMD,
			       FUNC0(0xa, 1, ch * 4 + slot, addr,
						   0, 0));

	/* wait up to 100ms */
	et = jiffies + HZ / 10;
	FUNC7(100);
	while (1) {
		FUNC5(priv->mc, I5100_SPDDATA, &w);
		if (!FUNC1(w))
			break;
		FUNC7(100);
	}

	if (!FUNC3(w) || FUNC4(w))
		return -1;

	*byte = FUNC2(w);

	return 0;
}