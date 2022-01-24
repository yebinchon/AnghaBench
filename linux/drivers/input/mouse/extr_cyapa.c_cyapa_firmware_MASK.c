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
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {TYPE_2__* ops; TYPE_1__* client; } ;
struct TYPE_4__ {int (* check_fw ) (struct cyapa*,struct firmware const*) ;int (* bl_enter ) (struct cyapa*) ;int (* bl_activate ) (struct cyapa*) ;int (* bl_initiate ) (struct cyapa*,struct firmware const*) ;int (* update_fw ) (struct cyapa*,struct firmware const*) ;} ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,char const*,struct device*) ; 
 int FUNC7 (struct cyapa*,struct firmware const*) ; 
 int FUNC8 (struct cyapa*) ; 
 int FUNC9 (struct cyapa*) ; 
 int FUNC10 (struct cyapa*,struct firmware const*) ; 
 int FUNC11 (struct cyapa*,struct firmware const*) ; 

__attribute__((used)) static int FUNC12(struct cyapa *cyapa, const char *fw_name)
{
	struct device *dev = &cyapa->client->dev;
	const struct firmware *fw;
	int error;

	error = FUNC6(&fw, fw_name, dev);
	if (error) {
		FUNC2(dev, "Could not load firmware from %s: %d\n",
			fw_name, error);
		return error;
	}

	error = cyapa->ops->check_fw(cyapa, fw);
	if (error) {
		FUNC2(dev, "Invalid CYAPA firmware image: %s\n",
				fw_name);
		goto done;
	}

	/*
	 * Resume the potentially suspended device because doing FW
	 * update on a device not in the FULL mode has a chance to
	 * fail.
	 */
	FUNC3(dev);

	/* Require IRQ support for firmware update commands. */
	FUNC1(cyapa);

	error = cyapa->ops->bl_enter(cyapa);
	if (error) {
		FUNC2(dev, "bl_enter failed, %d\n", error);
		goto err_detect;
	}

	error = cyapa->ops->bl_activate(cyapa);
	if (error) {
		FUNC2(dev, "bl_activate failed, %d\n", error);
		goto err_detect;
	}

	error = cyapa->ops->bl_initiate(cyapa, fw);
	if (error) {
		FUNC2(dev, "bl_initiate failed, %d\n", error);
		goto err_detect;
	}

	error = cyapa->ops->update_fw(cyapa, fw);
	if (error) {
		FUNC2(dev, "update_fw failed, %d\n", error);
		goto err_detect;
	}

err_detect:
	FUNC0(cyapa);
	FUNC4(dev);

done:
	FUNC5(fw);
	return error;
}