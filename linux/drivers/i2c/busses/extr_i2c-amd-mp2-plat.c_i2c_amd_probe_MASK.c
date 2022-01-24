#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct amd_mp2_dev {TYPE_2__* pci_dev; int /*<<< orphan*/  probed; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; TYPE_5__* parent; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; TYPE_11__ dev; int /*<<< orphan*/  timeout; struct amd_i2c_dev* algo_data; int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct TYPE_18__ {int bus_id; int /*<<< orphan*/  i2c_speed; int /*<<< orphan*/  reqcmd; int /*<<< orphan*/ * resume; int /*<<< orphan*/ * suspend; int /*<<< orphan*/ * cmd_completion; struct amd_mp2_dev* mp2_dev; } ;
struct amd_i2c_dev {TYPE_3__ adap; int /*<<< orphan*/  cmd_complete; TYPE_9__ common; struct platform_device* pdev; } ;
struct TYPE_14__ {char* unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  AMD_I2C_TIMEOUT ; 
 int /*<<< orphan*/  DL_FLAG_AUTOREMOVE_CONSUMER ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  amd_i2c_dev_quirks ; 
 struct amd_mp2_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct amd_mp2_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct amd_mp2_dev*) ; 
 scalar_t__ FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amd_i2c_dev* FUNC11 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  i2c_amd_algorithm ; 
 int /*<<< orphan*/  i2c_amd_cmd_completion ; 
 scalar_t__ FUNC13 (struct amd_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  i2c_amd_resume ; 
 int /*<<< orphan*/  i2c_amd_suspend ; 
 int /*<<< orphan*/  i2c_none ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,struct amd_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct amd_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	int ret;
	struct amd_i2c_dev *i2c_dev;
	acpi_handle handle = FUNC2(&pdev->dev);
	struct acpi_device *adev;
	struct amd_mp2_dev *mp2_dev;
	const char *uid;

	if (FUNC3(handle, &adev))
		return -ENODEV;

	/* The ACPI namespace doesn't contain information about which MP2 PCI
	 * device an AMDI0011 ACPI device is related to, so assume that there's
	 * only one MP2 PCI device per system.
	 */
	mp2_dev = FUNC4();
	if (!mp2_dev || !mp2_dev->probed)
		/* The MP2 PCI device should get probed later */
		return -EPROBE_DEFER;

	i2c_dev = FUNC11(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
	if (!i2c_dev)
		return -ENOMEM;

	i2c_dev->common.mp2_dev = mp2_dev;
	i2c_dev->pdev = pdev;
	FUNC17(pdev, i2c_dev);

	i2c_dev->common.cmd_completion = &i2c_amd_cmd_completion;
#ifdef CONFIG_PM
	i2c_dev->common.suspend = &i2c_amd_suspend;
	i2c_dev->common.resume = &i2c_amd_resume;
#endif

	uid = adev->pnp.unique_id;
	if (!uid) {
		FUNC9(&pdev->dev, "missing UID/bus id!\n");
		return -EINVAL;
	} else if (FUNC19(uid, "0") == 0) {
		i2c_dev->common.bus_id = 0;
	} else if (FUNC19(uid, "1") == 0) {
		i2c_dev->common.bus_id = 1;
	} else {
		FUNC9(&pdev->dev, "incorrect UID/bus id \"%s\"!\n", uid);
		return -EINVAL;
	}
	FUNC8(&pdev->dev, "bus id is %u\n", i2c_dev->common.bus_id);

	/* Register the adapter */
	FUNC5(mp2_dev);

	i2c_dev->common.reqcmd = i2c_none;
	if (FUNC7(&i2c_dev->common))
		return -EINVAL;
	FUNC10(&i2c_dev->pdev->dev, &mp2_dev->pci_dev->dev,
			DL_FLAG_AUTOREMOVE_CONSUMER);

	i2c_dev->common.i2c_speed = FUNC14(pdev);

	/* Setup i2c adapter description */
	i2c_dev->adap.owner = THIS_MODULE;
	i2c_dev->adap.algo = &i2c_amd_algorithm;
	i2c_dev->adap.quirks = &amd_i2c_dev_quirks;
	i2c_dev->adap.dev.parent = &pdev->dev;
	i2c_dev->adap.algo_data = i2c_dev;
	i2c_dev->adap.timeout = AMD_I2C_TIMEOUT;
	FUNC1(&i2c_dev->adap.dev, FUNC0(&pdev->dev));
	i2c_dev->adap.dev.of_node = pdev->dev.of_node;
	FUNC18(i2c_dev->adap.name, sizeof(i2c_dev->adap.name),
		 "AMD MP2 i2c bus %u", i2c_dev->common.bus_id);
	FUNC15(&i2c_dev->adap, i2c_dev);

	FUNC16(&i2c_dev->cmd_complete);

	/* Enable the bus */
	if (FUNC13(i2c_dev, true))
		FUNC9(&pdev->dev, "initial bus enable failed\n");

	/* Attach to the i2c layer */
	ret = FUNC12(&i2c_dev->adap);

	FUNC6(mp2_dev);

	if (ret < 0)
		FUNC9(&pdev->dev, "i2c add adapter failed = %d\n", ret);

	return ret;
}