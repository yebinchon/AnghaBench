#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ipu_ic_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {scalar_t__ cs; } ;
struct TYPE_6__ {scalar_t__ cs; } ;
struct TYPE_5__ {scalar_t__ cs; } ;
struct ipu_ic {TYPE_4__* bit; TYPE_3__ out_cs; TYPE_2__ g_in_cs; scalar_t__ graphics; TYPE_1__ in_cs; scalar_t__ rotation; struct ipu_ic_priv* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  ic_conf_csc2_en; int /*<<< orphan*/  ic_conf_csc1_en; int /*<<< orphan*/  ic_conf_cmb_en; int /*<<< orphan*/  ic_conf_rot_en; int /*<<< orphan*/  ic_conf_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  IC_CONF ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_ic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_ic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_ic *ic)
{
	struct ipu_ic_priv *priv = ic->priv;
	unsigned long flags;
	u32 ic_conf;

	FUNC2(&priv->lock, flags);

	ic_conf = FUNC0(ic, IC_CONF);

	ic_conf |= ic->bit->ic_conf_en;

	if (ic->rotation)
		ic_conf |= ic->bit->ic_conf_rot_en;

	if (ic->in_cs.cs != ic->out_cs.cs)
		ic_conf |= ic->bit->ic_conf_csc1_en;

	if (ic->graphics) {
		ic_conf |= ic->bit->ic_conf_cmb_en;
		ic_conf |= ic->bit->ic_conf_csc1_en;

		if (ic->g_in_cs.cs != ic->out_cs.cs)
			ic_conf |= ic->bit->ic_conf_csc2_en;
	}

	FUNC1(ic, ic_conf, IC_CONF);

	FUNC3(&priv->lock, flags);
}