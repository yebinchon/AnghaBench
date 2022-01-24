#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ipu_ic_priv {int /*<<< orphan*/  lock; } ;
struct ipu_ic {TYPE_1__* bit; struct ipu_ic_priv* priv; } ;
struct TYPE_2__ {int ic_conf_en; int ic_conf_csc1_en; int ic_conf_rot_en; int ic_conf_csc2_en; int ic_conf_cmb_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CONF ; 
 int FUNC0 (struct ipu_ic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_ic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_ic *ic)
{
	struct ipu_ic_priv *priv = ic->priv;
	unsigned long flags;
	u32 ic_conf;

	FUNC2(&priv->lock, flags);

	ic_conf = FUNC0(ic, IC_CONF);

	ic_conf &= ~(ic->bit->ic_conf_en |
		     ic->bit->ic_conf_csc1_en |
		     ic->bit->ic_conf_rot_en);
	if (ic->bit->ic_conf_csc2_en)
		ic_conf &= ~ic->bit->ic_conf_csc2_en;
	if (ic->bit->ic_conf_cmb_en)
		ic_conf &= ~ic->bit->ic_conf_cmb_en;

	FUNC1(ic, ic_conf, IC_CONF);

	FUNC3(&priv->lock, flags);
}