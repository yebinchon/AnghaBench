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
typedef  void* u32 ;
struct device {int dummy; } ;
struct arizona_micd_config {void* gpio; void* bias; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {int num_micd_configs; struct arizona_micd_config* micd_configs; } ;
struct arizona {TYPE_1__ pdata; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_ACCDET_SRC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,char const* const) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const* const,void**,int) ; 
 struct arizona_micd_config* FUNC2 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
					   struct arizona *arizona)
{
	const char * const prop = "wlf,micd-configs";
	const int entries_per_config = 3;
	struct arizona_micd_config *micd_configs;
	int nconfs, ret;
	int i, j;
	u32 *vals;

	nconfs = FUNC0(arizona->dev, prop);
	if (nconfs <= 0)
		return 0;

	vals = FUNC3(nconfs, sizeof(u32), GFP_KERNEL);
	if (!vals)
		return -ENOMEM;

	ret = FUNC1(arizona->dev, prop, vals, nconfs);
	if (ret < 0)
		goto out;

	nconfs /= entries_per_config;
	micd_configs = FUNC2(dev, nconfs, sizeof(*micd_configs),
				    GFP_KERNEL);
	if (!micd_configs) {
		ret = -ENOMEM;
		goto out;
	}

	for (i = 0, j = 0; i < nconfs; ++i) {
		micd_configs[i].src = vals[j++] ? ARIZONA_ACCDET_SRC : 0;
		micd_configs[i].bias = vals[j++];
		micd_configs[i].gpio = vals[j++];
	}

	arizona->pdata.micd_configs = micd_configs;
	arizona->pdata.num_micd_configs = nconfs;

out:
	FUNC4(vals);
	return ret;
}