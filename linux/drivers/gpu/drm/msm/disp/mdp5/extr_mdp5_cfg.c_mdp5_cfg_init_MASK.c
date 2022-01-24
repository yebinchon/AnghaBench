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
typedef  int /*<<< orphan*/  uint32_t ;
struct platform_device {int dummy; } ;
struct mdp5_kms {struct drm_device* dev; } ;
struct mdp5_cfg_platform {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  platform; TYPE_2__* hw; } ;
struct mdp5_cfg_handler {TYPE_1__ config; int /*<<< orphan*/  revision; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct mdp5_cfg_handler*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct mdp5_cfg_handler* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mdp5_cfg_handler* cfg_handlers_v1 ; 
 struct mdp5_cfg_handler* cfg_handlers_v3 ; 
 struct mdp5_cfg_handler* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* mdp5_cfg ; 
 int /*<<< orphan*/  FUNC5 (struct mdp5_cfg_handler*) ; 
 struct mdp5_cfg_platform* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mdp5_cfg_platform*,int) ; 
 struct platform_device* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

struct mdp5_cfg_handler *FUNC10(struct mdp5_kms *mdp5_kms,
		uint32_t major, uint32_t minor)
{
	struct drm_device *dev = mdp5_kms->dev;
	struct platform_device *pdev = FUNC8(dev->dev);
	struct mdp5_cfg_handler *cfg_handler;
	const struct mdp5_cfg_handler *cfg_handlers;
	struct mdp5_cfg_platform *pconfig;
	int i, ret = 0, num_handlers;

	cfg_handler = FUNC4(sizeof(*cfg_handler), GFP_KERNEL);
	if (FUNC9(!cfg_handler)) {
		ret = -ENOMEM;
		goto fail;
	}

	switch (major) {
	case 1:
		cfg_handlers = cfg_handlers_v1;
		num_handlers = FUNC0(cfg_handlers_v1);
		break;
	case 3:
		cfg_handlers = cfg_handlers_v3;
		num_handlers = FUNC0(cfg_handlers_v3);
		break;
	default:
		FUNC2(dev->dev, "unexpected MDP major version: v%d.%d\n",
				major, minor);
		ret = -ENXIO;
		goto fail;
	};

	/* only after mdp5_cfg global pointer's init can we access the hw */
	for (i = 0; i < num_handlers; i++) {
		if (cfg_handlers[i].revision != minor)
			continue;
		mdp5_cfg = cfg_handlers[i].config.hw;

		break;
	}
	if (FUNC9(!mdp5_cfg)) {
		FUNC2(dev->dev, "unexpected MDP minor revision: v%d.%d\n",
				major, minor);
		ret = -ENXIO;
		goto fail;
	}

	cfg_handler->revision = minor;
	cfg_handler->config.hw = mdp5_cfg;

	pconfig = FUNC6(pdev);
	FUNC7(&cfg_handler->config.platform, pconfig, sizeof(*pconfig));

	FUNC1("MDP5: %s hw config selected", mdp5_cfg->name);

	return cfg_handler;

fail:
	if (cfg_handler)
		FUNC5(cfg_handler);

	return FUNC3(ret);
}