#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mdp5_kms {TYPE_2__* pdev; } ;
struct mdp5_encoder {int /*<<< orphan*/  ctl; TYPE_1__* intf; } ;
struct drm_encoder {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int num; } ;

/* Variables and functions */
 int EINVAL ; 
 int MDP5_SPLIT_DPL_LOWER_INTF1_TG_SYNC ; 
 int MDP5_SPLIT_DPL_LOWER_INTF2_TG_SYNC ; 
 int /*<<< orphan*/  REG_MDP5_SPLIT_DPL_EN ; 
 int /*<<< orphan*/  REG_MDP5_SPLIT_DPL_LOWER ; 
 int /*<<< orphan*/  REG_MDP5_SPLIT_DPL_UPPER ; 
 struct mdp5_kms* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct mdp5_encoder* FUNC5 (struct drm_encoder*) ; 

int FUNC6(struct drm_encoder *encoder,
				       struct drm_encoder *slave_encoder)
{
	struct mdp5_encoder *mdp5_encoder = FUNC5(encoder);
	struct mdp5_encoder *mdp5_slave_enc = FUNC5(slave_encoder);
	struct mdp5_kms *mdp5_kms;
	struct device *dev;
	int intf_num;
	u32 data = 0;

	if (!encoder || !slave_encoder)
		return -EINVAL;

	mdp5_kms = FUNC0(encoder);
	intf_num = mdp5_encoder->intf->num;

	/* Switch slave encoder's TimingGen Sync mode,
	 * to use the master's enable signal for the slave encoder.
	 */
	if (intf_num == 1)
		data |= MDP5_SPLIT_DPL_LOWER_INTF2_TG_SYNC;
	else if (intf_num == 2)
		data |= MDP5_SPLIT_DPL_LOWER_INTF1_TG_SYNC;
	else
		return -EINVAL;

	dev = &mdp5_kms->pdev->dev;
	/* Make sure clocks are on when connectors calling this function. */
	FUNC3(dev);

	/* Dumb Panel, Sync mode */
	FUNC2(mdp5_kms, REG_MDP5_SPLIT_DPL_UPPER, 0);
	FUNC2(mdp5_kms, REG_MDP5_SPLIT_DPL_LOWER, data);
	FUNC2(mdp5_kms, REG_MDP5_SPLIT_DPL_EN, 1);

	FUNC1(mdp5_encoder->ctl, mdp5_slave_enc->ctl, true);

	FUNC4(dev);

	return 0;
}