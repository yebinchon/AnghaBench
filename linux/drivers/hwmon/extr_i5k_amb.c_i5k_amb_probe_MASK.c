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
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct i5k_amb_data {int /*<<< orphan*/  amb_len; int /*<<< orphan*/  amb_base; int /*<<< orphan*/  amb_mmio; int /*<<< orphan*/ * amb_present; } ;
struct TYPE_2__ {scalar_t__ fbd0; scalar_t__ err; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* chipset_ids ; 
 int FUNC0 (struct platform_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (struct i5k_amb_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i5k_amb_data*) ; 
 struct i5k_amb_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct i5k_amb_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct i5k_amb_data *data;
	struct resource *reso;
	int i, res;

	data = FUNC6(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* Figure out where the AMB registers live */
	i = 0;
	do {
		res = FUNC2(data, chipset_ids[i].err);
		if (res == 0)
			break;
		i++;
	} while (chipset_ids[i].err);

	if (res)
		goto err;

	/* Copy the DIMM presence map for the first two channels */
	res = FUNC1(&data->amb_present[0], chipset_ids[i].fbd0);
	if (res)
		goto err;

	/* Copy the DIMM presence map for the optional second two channels */
	FUNC1(&data->amb_present[2], chipset_ids[i].fbd0 + 1);

	/* Set up resource regions */
	reso = FUNC9(data->amb_base, data->amb_len, DRVNAME);
	if (!reso) {
		res = -EBUSY;
		goto err;
	}

	data->amb_mmio = FUNC3(data->amb_base, data->amb_len);
	if (!data->amb_mmio) {
		res = -EBUSY;
		goto err_map_failed;
	}

	FUNC7(pdev, data);

	res = FUNC0(pdev);
	if (res)
		goto err_init_failed;

	return res;

err_init_failed:
	FUNC4(data->amb_mmio);
err_map_failed:
	FUNC8(data->amb_base, data->amb_len);
err:
	FUNC5(data);
	return res;
}