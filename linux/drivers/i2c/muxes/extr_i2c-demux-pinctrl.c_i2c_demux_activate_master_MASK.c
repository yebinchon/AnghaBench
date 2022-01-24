#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct pinctrl_state {int dummy; } ;
typedef  struct pinctrl_state pinctrl ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct TYPE_13__ {TYPE_4__ dev; int /*<<< orphan*/  quirks; int /*<<< orphan*/  timeout; int /*<<< orphan*/  retries; int /*<<< orphan*/  class; struct i2c_demux_pinctrl_priv* algo_data; TYPE_2__* algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  functionality; void* master_xfer_atomic; void* master_xfer; } ;
struct i2c_demux_pinctrl_priv {size_t cur_chan; TYPE_7__* dev; TYPE_5__* chan; TYPE_6__ cur_adap; TYPE_2__ algo; int /*<<< orphan*/  bus_name; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {int /*<<< orphan*/  quirks; int /*<<< orphan*/  timeout; int /*<<< orphan*/  retries; int /*<<< orphan*/  class; TYPE_3__ dev; TYPE_1__* algo; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_12__ {int /*<<< orphan*/  chgset; struct i2c_adapter* parent_adap; int /*<<< orphan*/  parent_np; } ;
struct TYPE_8__ {scalar_t__ master_xfer_atomic; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int FUNC1 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,char*,size_t,int) ; 
 struct pinctrl_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_adapter*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  i2c_demux_functionality ; 
 void* i2c_demux_master_xfer ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct i2c_adapter* FUNC9 (int /*<<< orphan*/ ) ; 
 struct pinctrl_state* FUNC10 (struct pinctrl_state*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pinctrl_state*,struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_demux_pinctrl_priv *priv, u32 new_chan)
{
	struct i2c_adapter *adap;
	struct pinctrl *p;
	int ret;

	ret = FUNC7(&priv->chan[new_chan].chgset);
	if (ret)
		goto err;

	adap = FUNC9(priv->chan[new_chan].parent_np);
	if (!adap) {
		ret = -ENODEV;
		goto err_with_revert;
	}

	/*
	 * Check if there are pinctrl states at all. Note: we cant' use
	 * devm_pinctrl_get_select() because we need to distinguish between
	 * the -ENODEV from devm_pinctrl_get() and pinctrl_lookup_state().
	 */
	p = FUNC3(adap->dev.parent);
	if (FUNC0(p)) {
		ret = FUNC1(p);
		/* continue if just no pinctrl states (e.g. i2c-gpio), otherwise exit */
		if (ret != -ENODEV)
			goto err_with_put;
	} else {
		/* there are states. check and use them */
		struct pinctrl_state *s = FUNC10(p, priv->bus_name);

		if (FUNC0(s)) {
			ret = FUNC1(s);
			goto err_with_put;
		}
		ret = FUNC11(p, s);
		if (ret < 0)
			goto err_with_put;
	}

	priv->chan[new_chan].parent_adap = adap;
	priv->cur_chan = new_chan;

	/* Now fill out current adapter structure. cur_chan must be up to date */
	priv->algo.master_xfer = i2c_demux_master_xfer;
	if (adap->algo->master_xfer_atomic)
		priv->algo.master_xfer_atomic = i2c_demux_master_xfer;
	priv->algo.functionality = i2c_demux_functionality;

	FUNC12(priv->cur_adap.name, sizeof(priv->cur_adap.name),
		 "i2c-demux (master i2c-%d)", FUNC4(adap));
	priv->cur_adap.owner = THIS_MODULE;
	priv->cur_adap.algo = &priv->algo;
	priv->cur_adap.algo_data = priv;
	priv->cur_adap.dev.parent = &adap->dev;
	priv->cur_adap.class = adap->class;
	priv->cur_adap.retries = adap->retries;
	priv->cur_adap.timeout = adap->timeout;
	priv->cur_adap.quirks = adap->quirks;
	priv->cur_adap.dev.of_node = priv->dev->of_node;
	ret = FUNC5(&priv->cur_adap);
	if (ret < 0)
		goto err_with_put;

	return 0;

 err_with_put:
	FUNC6(adap);
 err_with_revert:
	FUNC8(&priv->chan[new_chan].chgset);
 err:
	FUNC2(priv->dev, "failed to setup demux-adapter %d (%d)\n", new_chan, ret);
	priv->cur_chan = -EINVAL;
	return ret;
}