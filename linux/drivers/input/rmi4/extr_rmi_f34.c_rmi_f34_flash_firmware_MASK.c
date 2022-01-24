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
typedef  int u32 ;
struct rmi_function {int /*<<< orphan*/  dev; } ;
struct rmi_f34_firmware {int /*<<< orphan*/ * data; int /*<<< orphan*/  config_size; int /*<<< orphan*/  image_size; } ;
struct f34_data {int update_size; scalar_t__ update_progress; struct rmi_function* fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  F34_ERASE_ALL ; 
 int /*<<< orphan*/  F34_ERASE_CONFIG ; 
 int /*<<< orphan*/  F34_ERASE_WAIT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct f34_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct f34_data*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct f34_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct f34_data *f34,
				  const struct rmi_f34_firmware *syn_fw)
{
	struct rmi_function *fn = f34->fn;
	u32 image_size = FUNC1(syn_fw->image_size);
	u32 config_size = FUNC1(syn_fw->config_size);
	int ret;

	f34->update_progress = 0;
	f34->update_size = image_size + config_size;

	if (image_size) {
		FUNC0(&fn->dev, "Erasing firmware...\n");
		ret = FUNC2(f34, F34_ERASE_ALL,
				      F34_ERASE_WAIT_MS, true);
		if (ret)
			return ret;

		FUNC0(&fn->dev, "Writing firmware (%d bytes)...\n",
			 image_size);
		ret = FUNC4(f34, syn_fw->data);
		if (ret)
			return ret;
	}

	if (config_size) {
		/*
		 * We only need to erase config if we haven't updated
		 * firmware.
		 */
		if (!image_size) {
			FUNC0(&fn->dev, "Erasing config...\n");
			ret = FUNC2(f34, F34_ERASE_CONFIG,
					      F34_ERASE_WAIT_MS, true);
			if (ret)
				return ret;
		}

		FUNC0(&fn->dev, "Writing config (%d bytes)...\n",
			 config_size);
		ret = FUNC3(f34, &syn_fw->data[image_size]);
		if (ret)
			return ret;
	}

	return 0;
}