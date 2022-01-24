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
struct altera_hps2fpga_data {int remap_mask; int /*<<< orphan*/  l3reg; int /*<<< orphan*/  bridge_reset; } ;

/* Variables and functions */
 int ALT_L3_REMAP_MPUZERO_MSK ; 
 int /*<<< orphan*/  ALT_L3_REMAP_OFST ; 
 int /*<<< orphan*/  l3_remap_lock ; 
 int l3_remap_shadow ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct altera_hps2fpga_data *priv,
				    bool enable)
{
	unsigned long flags;
	int ret;

	/* bring bridge out of reset */
	if (enable)
		ret = FUNC2(priv->bridge_reset);
	else
		ret = FUNC1(priv->bridge_reset);
	if (ret)
		return ret;

	/* Allow bridge to be visible to L3 masters or not */
	if (priv->remap_mask) {
		FUNC3(&l3_remap_lock, flags);
		l3_remap_shadow |= ALT_L3_REMAP_MPUZERO_MSK;

		if (enable)
			l3_remap_shadow |= priv->remap_mask;
		else
			l3_remap_shadow &= ~priv->remap_mask;

		ret = FUNC0(priv->l3reg, ALT_L3_REMAP_OFST,
				   l3_remap_shadow);
		FUNC4(&l3_remap_lock, flags);
	}

	return ret;
}