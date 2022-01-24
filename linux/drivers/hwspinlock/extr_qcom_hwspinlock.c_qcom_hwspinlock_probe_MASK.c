#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct regmap {int dummy; } ;
struct reg_field {int reg; int msb; scalar_t__ lsb; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct hwspinlock_device {TYPE_1__* lock; } ;
struct hwspinlock {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int QCOM_MUTEX_NUM_LOCKS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct hwspinlock_device* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct regmap*,struct reg_field) ; 
 int FUNC5 (struct hwspinlock_device*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct hwspinlock_device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  qcom_hwspinlock_ops ; 
 struct regmap* FUNC12 (struct device_node*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct hwspinlock_device *bank;
	struct device_node *syscon;
	struct reg_field field;
	struct regmap *regmap;
	size_t array_size;
	u32 stride;
	u32 base;
	int ret;
	int i;

	syscon = FUNC7(pdev->dev.of_node, "syscon", 0);
	if (!syscon) {
		FUNC2(&pdev->dev, "no syscon property\n");
		return -ENODEV;
	}

	regmap = FUNC12(syscon);
	FUNC6(syscon);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	ret = FUNC8(pdev->dev.of_node, "syscon", 1, &base);
	if (ret < 0) {
		FUNC2(&pdev->dev, "no offset in syscon\n");
		return -EINVAL;
	}

	ret = FUNC8(pdev->dev.of_node, "syscon", 2, &stride);
	if (ret < 0) {
		FUNC2(&pdev->dev, "no stride syscon\n");
		return -EINVAL;
	}

	array_size = QCOM_MUTEX_NUM_LOCKS * sizeof(struct hwspinlock);
	bank = FUNC3(&pdev->dev, sizeof(*bank) + array_size, GFP_KERNEL);
	if (!bank)
		return -ENOMEM;

	FUNC9(pdev, bank);

	for (i = 0; i < QCOM_MUTEX_NUM_LOCKS; i++) {
		field.reg = base + i * stride;
		field.lsb = 0;
		field.msb = 31;

		bank->lock[i].priv = FUNC4(&pdev->dev,
							     regmap, field);
	}

	FUNC11(&pdev->dev);

	ret = FUNC5(bank, &pdev->dev, &qcom_hwspinlock_ops,
				   0, QCOM_MUTEX_NUM_LOCKS);
	if (ret)
		FUNC10(&pdev->dev);

	return ret;
}